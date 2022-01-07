
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {scalar_t__ write_suspended; scalar_t__ connecting; scalar_t__ connection_refused; } ;
struct bufferevent {int enabled; int ev_write; int output; int ev_read; } ;
typedef int evutil_socket_t ;
typedef int ev_ssize_t ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 short BEV_EVENT_TIMEOUT ;
 short BEV_EVENT_WRITING ;
 scalar_t__ BEV_IS_ASYNC (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int) ;
 short EV_TIMEOUT ;
 int EV_WRITE ;
 int bufferevent_async_set_connected_ (struct bufferevent*) ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_decrement_write_buckets_ (struct bufferevent_private*,int) ;
 int bufferevent_disable (struct bufferevent*,int) ;
 int bufferevent_get_write_max_ (struct bufferevent_private*) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int ) ;
 int bufferevent_socket_set_conn_address_fd_ (struct bufferevent*,int ) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int,int ) ;
 int evbuffer_freeze (int ,int) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int evbuffer_unfreeze (int ,int) ;
 int evbuffer_write_atmost (int ,int ,int) ;
 int event_del (int *) ;
 int evutil_socket_finished_connecting_ (int ) ;
 int evutil_socket_geterror (int ) ;

__attribute__((used)) static void
bufferevent_writecb(evutil_socket_t fd, short event, void *arg)
{
 struct bufferevent *bufev = arg;
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);
 int res = 0;
 short what = BEV_EVENT_WRITING;
 int connected = 0;
 ev_ssize_t atmost = -1;

 bufferevent_incref_and_lock_(bufev);

 if (event == EV_TIMEOUT) {



  what |= BEV_EVENT_TIMEOUT;
  goto error;
 }
 if (bufev_p->connecting) {
  int c = evutil_socket_finished_connecting_(fd);


  if (bufev_p->connection_refused) {
   bufev_p->connection_refused = 0;
   c = -1;
  }

  if (c == 0)
   goto done;

  bufev_p->connecting = 0;
  if (c < 0) {
   event_del(&bufev->ev_write);
   event_del(&bufev->ev_read);
   bufferevent_run_eventcb_(bufev, BEV_EVENT_ERROR, 0);
   goto done;
  } else {
   connected = 1;
   bufferevent_socket_set_conn_address_fd_(bufev, fd);
   bufferevent_run_eventcb_(bufev,
     BEV_EVENT_CONNECTED, 0);
   if (!(bufev->enabled & EV_WRITE) ||
       bufev_p->write_suspended) {
    event_del(&bufev->ev_write);
    goto done;
   }
  }
 }

 atmost = bufferevent_get_write_max_(bufev_p);

 if (bufev_p->write_suspended)
  goto done;

 if (evbuffer_get_length(bufev->output)) {
  evbuffer_unfreeze(bufev->output, 1);
  res = evbuffer_write_atmost(bufev->output, fd, atmost);
  evbuffer_freeze(bufev->output, 1);
  if (res == -1) {
   int err = evutil_socket_geterror(fd);
   if (EVUTIL_ERR_RW_RETRIABLE(err))
    goto reschedule;
   what |= BEV_EVENT_ERROR;
  } else if (res == 0) {




   what |= BEV_EVENT_EOF;
  }
  if (res <= 0)
   goto error;

  bufferevent_decrement_write_buckets_(bufev_p, res);
 }

 if (evbuffer_get_length(bufev->output) == 0) {
  event_del(&bufev->ev_write);
 }





 if (res || !connected) {
  bufferevent_trigger_nolock_(bufev, EV_WRITE, 0);
 }

 goto done;

 reschedule:
 if (evbuffer_get_length(bufev->output) == 0) {
  event_del(&bufev->ev_write);
 }
 goto done;

 error:
 bufferevent_disable(bufev, EV_WRITE);
 bufferevent_run_eventcb_(bufev, what, 0);

 done:
 bufferevent_decref_and_unlock_(bufev);
}

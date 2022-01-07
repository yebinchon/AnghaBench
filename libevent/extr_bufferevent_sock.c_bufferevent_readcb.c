
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evbuffer {int dummy; } ;
struct bufferevent_private {int connection_refused; scalar_t__ read_suspended; } ;
struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {TYPE_1__ wm_read; struct evbuffer* input; } ;
typedef int evutil_socket_t ;
typedef scalar_t__ ev_ssize_t ;


 short BEV_EVENT_EOF ;
 short BEV_EVENT_ERROR ;
 short BEV_EVENT_READING ;
 short BEV_EVENT_TIMEOUT ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;
 scalar_t__ EVUTIL_ERR_CONNECT_REFUSED (int) ;
 scalar_t__ EVUTIL_ERR_RW_RETRIABLE (int) ;
 int EV_READ ;
 short EV_TIMEOUT ;
 int bufferevent_decref_and_unlock_ (struct bufferevent*) ;
 int bufferevent_decrement_read_buckets_ (struct bufferevent_private*,int) ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 scalar_t__ bufferevent_get_read_max_ (struct bufferevent_private*) ;
 int bufferevent_incref_and_lock_ (struct bufferevent*) ;
 int bufferevent_run_eventcb_ (struct bufferevent*,short,int ) ;
 int bufferevent_trigger_nolock_ (struct bufferevent*,int ,int ) ;
 int bufferevent_wm_suspend_read (struct bufferevent*) ;
 int evbuffer_freeze (struct evbuffer*,int ) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_read (struct evbuffer*,int ,int) ;
 int evbuffer_unfreeze (struct evbuffer*,int ) ;
 int evutil_socket_geterror (int ) ;

__attribute__((used)) static void
bufferevent_readcb(evutil_socket_t fd, short event, void *arg)
{
 struct bufferevent *bufev = arg;
 struct bufferevent_private *bufev_p = BEV_UPCAST(bufev);
 struct evbuffer *input;
 int res = 0;
 short what = BEV_EVENT_READING;
 ev_ssize_t howmuch = -1, readmax=-1;

 bufferevent_incref_and_lock_(bufev);

 if (event == EV_TIMEOUT) {



  what |= BEV_EVENT_TIMEOUT;
  goto error;
 }

 input = bufev->input;





 if (bufev->wm_read.high != 0) {
  howmuch = bufev->wm_read.high - evbuffer_get_length(input);

  if (howmuch <= 0) {
   bufferevent_wm_suspend_read(bufev);
   goto done;
  }
 }
 readmax = bufferevent_get_read_max_(bufev_p);
 if (howmuch < 0 || howmuch > readmax)

  howmuch = readmax;
 if (bufev_p->read_suspended)
  goto done;

 evbuffer_unfreeze(input, 0);
 res = evbuffer_read(input, fd, (int)howmuch);
 evbuffer_freeze(input, 0);

 if (res == -1) {
  int err = evutil_socket_geterror(fd);
  if (EVUTIL_ERR_RW_RETRIABLE(err))
   goto reschedule;
  if (EVUTIL_ERR_CONNECT_REFUSED(err)) {
   bufev_p->connection_refused = 1;
   goto done;
  }

  what |= BEV_EVENT_ERROR;
 } else if (res == 0) {

  what |= BEV_EVENT_EOF;
 }

 if (res <= 0)
  goto error;

 bufferevent_decrement_read_buckets_(bufev_p, res);


 bufferevent_trigger_nolock_(bufev, EV_READ, 0);

 goto done;

 reschedule:
 goto done;

 error:
 bufferevent_disable(bufev, EV_READ);
 bufferevent_run_eventcb_(bufev, what, 0);

 done:
 bufferevent_decref_and_unlock_(bufev);
}

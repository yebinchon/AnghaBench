
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enabled; int ev_read; } ;
struct TYPE_4__ {TYPE_2__ bev; } ;
struct bufferevent_openssl {int state; int ssl; TYPE_1__ bev; } ;
typedef int evutil_socket_t ;


 int BEV_EVENT_CONNECTED ;
 int BEV_EVENT_READING ;



 int ERR_clear_error () ;
 int EVUTIL_ASSERT (int ) ;


 int SSL_do_handshake (int ) ;
 int SSL_get_error (int ,int) ;
 int bufferevent_enable (TYPE_2__*,int ) ;
 int bufferevent_run_eventcb_ (TYPE_2__*,int ,int ) ;
 int conn_closed (struct bufferevent_openssl*,int ,int,int) ;
 int decrement_buckets (struct bufferevent_openssl*) ;
 int event_get_fd (int *) ;
 int print_err (int) ;
 int set_open_callbacks (struct bufferevent_openssl*,int ) ;
 int start_reading (struct bufferevent_openssl*) ;
 int start_writing (struct bufferevent_openssl*) ;
 int stop_reading (struct bufferevent_openssl*) ;
 int stop_writing (struct bufferevent_openssl*) ;

__attribute__((used)) static int
do_handshake(struct bufferevent_openssl *bev_ssl)
{
 int r;

 switch (bev_ssl->state) {
 default:
 case 130:
  EVUTIL_ASSERT(0);
  return -1;
 case 131:
 case 132:
  ERR_clear_error();
  r = SSL_do_handshake(bev_ssl->ssl);
  break;
 }
 decrement_buckets(bev_ssl);

 if (r==1) {
  evutil_socket_t fd = event_get_fd(&bev_ssl->bev.bev.ev_read);

  bev_ssl->state = 130;
  set_open_callbacks(bev_ssl, fd);

  bufferevent_enable(&bev_ssl->bev.bev, bev_ssl->bev.bev.enabled);
  bufferevent_run_eventcb_(&bev_ssl->bev.bev,
      BEV_EVENT_CONNECTED, 0);
  return 1;
 } else {
  int err = SSL_get_error(bev_ssl->ssl, r);
  print_err(err);
  switch (err) {
  case 128:
   stop_reading(bev_ssl);
   return start_writing(bev_ssl);
  case 129:
   stop_writing(bev_ssl);
   return start_reading(bev_ssl);
  default:
   conn_closed(bev_ssl, BEV_EVENT_READING, err, r);
   return -1;
  }
 }
}

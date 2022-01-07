
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef char* evutil_socket_t ;


 short BEV_EVENT_CONNECTED ;
 short BEV_EVENT_ERROR ;
 int be_free (struct bufferevent**) ;
 int be_ssl_errors (struct bufferevent*) ;
 struct event_base* bufferevent_get_base (struct bufferevent*) ;
 char* bufferevent_getfd (struct bufferevent*) ;
 int error (char*,short,char*) ;
 int event_base_loopexit (struct event_base*,int *) ;
 int info (char*) ;

__attribute__((used)) static int event_cb_(struct bufferevent *bev, short what, int ssl, int stop)
{
 struct event_base *base = bufferevent_get_base(bev);
 evutil_socket_t fd = bufferevent_getfd(bev);

 if (what & BEV_EVENT_CONNECTED) {
  info("Connected\n");
  return 0;
 }
 if (ssl && what & BEV_EVENT_ERROR) {
  be_ssl_errors(bev);
 }

 if (stop)
  event_base_loopexit(base, ((void*)0));

 error("Got 0x%x event on fd=%d. Terminating connection\n", what, fd);
 be_free(&bev);
 return 1;
}

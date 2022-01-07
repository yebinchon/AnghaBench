
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int EV_READ ;
 int bufferevent_disable (struct bufferevent*,int ) ;
 int bufferevent_get_input (struct bufferevent*) ;
 scalar_t__ evbuffer_contains (int ,char const*) ;
 int event_base_loopexit (void*,int *) ;
 int test_ok ;

__attribute__((used)) static void
http_failure_readcb(struct bufferevent *bev, void *arg)
{
 const char *what = "400 Bad Request";
 if (evbuffer_contains(bufferevent_get_input(bev), what)) {
  test_ok = 2;
  bufferevent_disable(bev, EV_READ);
  event_base_loopexit(arg, ((void*)0));
 }
}

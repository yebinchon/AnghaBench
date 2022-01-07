
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 short BEV_EVENT_CONNECTED ;
 int event_base_loopexit (void*,int *) ;
 int test_ok ;

__attribute__((used)) static void
http_errorcb(struct bufferevent *bev, short what, void *arg)
{

 if (what & BEV_EVENT_CONNECTED)
  return;
 test_ok = -2;
 event_base_loopexit(arg, ((void*)0));
}

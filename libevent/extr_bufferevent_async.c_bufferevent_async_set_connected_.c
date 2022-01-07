
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_async {int ok; } ;
struct bufferevent {int enabled; } ;


 int be_async_enable (struct bufferevent*,int ) ;
 struct bufferevent_async* upcast (struct bufferevent*) ;

void
bufferevent_async_set_connected_(struct bufferevent *bev)
{
 struct bufferevent_async *bev_async = upcast(bev);
 bev_async->ok = 1;

 be_async_enable(bev, bev->enabled);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_async {int dummy; } ;
struct bufferevent {int dummy; } ;


 int BEV_DEL_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int BEV_DEL_GENERIC_WRITE_TIMEOUT (struct bufferevent*) ;
 short EV_READ ;
 short EV_WRITE ;
 int bev_async_del_read (struct bufferevent_async*) ;
 int bev_async_del_write (struct bufferevent_async*) ;
 struct bufferevent_async* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_async_disable(struct bufferevent *bev, short what)
{
 struct bufferevent_async *bev_async = upcast(bev);




 if (what & EV_READ) {
  BEV_DEL_GENERIC_READ_TIMEOUT(bev);
  bev_async_del_read(bev_async);
 }
 if (what & EV_WRITE) {
  BEV_DEL_GENERIC_WRITE_TIMEOUT(bev);
  bev_async_del_write(bev_async);
 }

 return 0;
}

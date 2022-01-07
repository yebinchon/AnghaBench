
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;


 int BEV_DEL_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int BEV_DEL_GENERIC_WRITE_TIMEOUT (struct bufferevent*) ;
 short EV_READ ;
 short EV_WRITE ;

__attribute__((used)) static int
be_pair_disable(struct bufferevent *bev, short events)
{
 if (events & EV_READ) {
  BEV_DEL_GENERIC_READ_TIMEOUT(bev);
 }
 if (events & EV_WRITE) {
  BEV_DEL_GENERIC_WRITE_TIMEOUT(bev);
 }
 return 0;
}

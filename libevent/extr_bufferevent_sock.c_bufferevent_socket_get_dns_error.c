
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int dns_error; } ;
struct bufferevent {int dummy; } ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;

int
bufferevent_socket_get_dns_error(struct bufferevent *bev)
{
 int rv;
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);

 BEV_LOCK(bev);
 rv = bev_p->dns_error;
 BEV_UNLOCK(bev);

 return rv;
}

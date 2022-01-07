
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_private {int options; } ;
struct bufferevent {int dummy; } ;
typedef enum bufferevent_options { ____Placeholder_bufferevent_options } bufferevent_options ;


 int BEV_LOCK (struct bufferevent*) ;
 int BEV_UNLOCK (struct bufferevent*) ;
 struct bufferevent_private* BEV_UPCAST (struct bufferevent*) ;

enum bufferevent_options
bufferevent_get_options_(struct bufferevent *bev)
{
 struct bufferevent_private *bev_p = BEV_UPCAST(bev);
 enum bufferevent_options options;

 BEV_LOCK(bev);
 options = bev_p->options;
 BEV_UNLOCK(bev);
 return options;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_filtered {int underlying; } ;
struct bufferevent {int dummy; } ;


 int BEV_DEL_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int BEV_DEL_GENERIC_WRITE_TIMEOUT (struct bufferevent*) ;
 int BEV_SUSPEND_FILT_READ ;
 short EV_READ ;
 short EV_WRITE ;
 int bufferevent_suspend_read_ (int ,int ) ;
 struct bufferevent_filtered* upcast (struct bufferevent*) ;

__attribute__((used)) static int
be_filter_disable(struct bufferevent *bev, short event)
{
 struct bufferevent_filtered *bevf = upcast(bev);
 if (event & EV_WRITE)
  BEV_DEL_GENERIC_WRITE_TIMEOUT(bev);
 if (event & EV_READ) {
  BEV_DEL_GENERIC_READ_TIMEOUT(bev);
  bufferevent_suspend_read_(bevf->underlying,
      BEV_SUSPEND_FILT_READ);
 }
 return 0;
}

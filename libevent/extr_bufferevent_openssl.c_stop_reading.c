
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {TYPE_1__ bev; scalar_t__ underlying; scalar_t__ write_blocked_on_read; } ;


 int BEV_SUSPEND_FILT_READ ;
 int bufferevent_suspend_read_ (scalar_t__,int ) ;
 int event_del (int *) ;

__attribute__((used)) static void
stop_reading(struct bufferevent_openssl *bev_ssl)
{
 if (bev_ssl->write_blocked_on_read)
  return;
 if (bev_ssl->underlying) {
  bufferevent_suspend_read_(bev_ssl->underlying,
      BEV_SUSPEND_FILT_READ);
 } else {
  struct bufferevent *bev = &bev_ssl->bev.bev;
  event_del(&bev->ev_read);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bufferevent {int timeout_write; int ev_write; int timeout_read; int ev_read; } ;
struct TYPE_2__ {struct bufferevent bev; } ;
struct bufferevent_openssl {scalar_t__ read_blocked_on_write; TYPE_1__ bev; scalar_t__ underlying; } ;


 int BEV_SUSPEND_FILT_READ ;
 int bufferevent_add_event_ (int *,int *) ;
 int bufferevent_unsuspend_read_ (scalar_t__,int ) ;

__attribute__((used)) static int
start_reading(struct bufferevent_openssl *bev_ssl)
{
 if (bev_ssl->underlying) {
  bufferevent_unsuspend_read_(bev_ssl->underlying,
      BEV_SUSPEND_FILT_READ);
  return 0;
 } else {
  struct bufferevent *bev = &bev_ssl->bev.bev;
  int r;
  r = bufferevent_add_event_(&bev->ev_read, &bev->timeout_read);
  if (r == 0 && bev_ssl->read_blocked_on_write)
   r = bufferevent_add_event_(&bev->ev_write,
       &bev->timeout_write);
  return r;
 }
}

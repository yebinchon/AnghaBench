
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ high; } ;
struct bufferevent {int enabled; TYPE_1__ wm_read; int input; } ;


 int BEV_OPT_DEFER_CALLBACKS ;
 int EV_READ ;
 int bufferevent_trigger (struct bufferevent*,int,int ) ;
 scalar_t__ evbuffer_get_length (int ) ;

__attribute__((used)) static void bufferevent_inbuf_wm_check(struct bufferevent *bev)
{
 if (!bev->wm_read.high)
  return;
 if (!(bev->enabled & EV_READ))
  return;
 if (evbuffer_get_length(bev->input) < bev->wm_read.high)
  return;

 bufferevent_trigger(bev, EV_READ, BEV_OPT_DEFER_CALLBACKS);
}

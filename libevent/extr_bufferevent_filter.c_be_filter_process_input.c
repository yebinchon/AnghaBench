
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bufferevent_filtered {int (* process_in ) (int ,int ,int,int,int ) ;int context; TYPE_2__* underlying; } ;
struct TYPE_3__ {int high; } ;
struct bufferevent {int enabled; int input; TYPE_1__ wm_read; } ;
typedef int ev_ssize_t ;
typedef enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;
struct TYPE_4__ {int input; } ;


 int BEV_NORMAL ;
 int BEV_OK ;
 int BEV_RESET_GENERIC_READ_TIMEOUT (struct bufferevent*) ;
 int EV_READ ;
 scalar_t__ be_readbuf_full (struct bufferevent_filtered*,int) ;
 struct bufferevent* downcast (struct bufferevent_filtered*) ;
 int evbuffer_get_length (int ) ;
 int stub1 (int ,int ,int,int,int ) ;

__attribute__((used)) static enum bufferevent_filter_result
be_filter_process_input(struct bufferevent_filtered *bevf,
   enum bufferevent_flush_mode state,
   int *processed_out)
{
 enum bufferevent_filter_result res;
 struct bufferevent *bev = downcast(bevf);

 if (state == BEV_NORMAL) {


  if (!(bev->enabled & EV_READ) ||
      be_readbuf_full(bevf, state))
   return BEV_OK;
 }

 do {
  ev_ssize_t limit = -1;
  if (state == BEV_NORMAL && bev->wm_read.high)
   limit = bev->wm_read.high -
       evbuffer_get_length(bev->input);

  res = bevf->process_in(bevf->underlying->input,
      bev->input, limit, state, bevf->context);

  if (res == BEV_OK)
   *processed_out = 1;
 } while (res == BEV_OK &&
   (bev->enabled & EV_READ) &&
   evbuffer_get_length(bevf->underlying->input) &&
   !be_readbuf_full(bevf, state));

 if (*processed_out)
  BEV_RESET_GENERIC_READ_TIMEOUT(bev);

 return res;
}

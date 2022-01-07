
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input; } ;
struct bufferevent_private {int max_single_read; TYPE_1__ bev; int max_single_write; int * rate_limiting; } ;


 int MAX_SINGLE_READ_DEFAULT ;
 int MAX_SINGLE_WRITE_DEFAULT ;
 scalar_t__ evbuffer_set_max_read (int ,int ) ;

int
bufferevent_ratelim_init_(struct bufferevent_private *bev)
{
 bev->rate_limiting = ((void*)0);
 bev->max_single_read = MAX_SINGLE_READ_DEFAULT;
 bev->max_single_write = MAX_SINGLE_WRITE_DEFAULT;

 if (evbuffer_set_max_read(bev->bev.input, bev->max_single_read))
  return -1;

 return 0;
}

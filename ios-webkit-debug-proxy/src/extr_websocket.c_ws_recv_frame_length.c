
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_state ;
typedef TYPE_2__* ws_private_t ;
struct TYPE_6__ {int frame_length; scalar_t__ needed_length; } ;
struct TYPE_5__ {TYPE_2__* private_state; } ;


 int STATE_ERROR ;
 int STATE_READ_FRAME ;
 scalar_t__ ws_read_frame_length (TYPE_1__*) ;

ws_state ws_recv_frame_length(ws_t self) {
  ws_private_t my = self->private_state;

  if (ws_read_frame_length(self)) {
    return STATE_ERROR;
  }
  if (my->needed_length || !my->frame_length) {
    return -1;
  }
  return STATE_READ_FRAME;
}

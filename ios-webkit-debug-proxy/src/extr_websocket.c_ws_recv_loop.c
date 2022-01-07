
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* ws_t ;
typedef int ws_status ;
typedef scalar_t__ ws_state ;
typedef TYPE_3__* ws_private_t ;
struct TYPE_11__ {TYPE_1__* in; scalar_t__ state; } ;
struct TYPE_10__ {TYPE_3__* private_state; } ;
struct TYPE_9__ {scalar_t__ in_tail; scalar_t__ in_head; } ;
 int WS_ERROR ;
 int WS_SUCCESS ;
 scalar_t__ ws_recv_frame (TYPE_2__*) ;
 scalar_t__ ws_recv_frame_length (TYPE_2__*) ;
 scalar_t__ ws_recv_headers (TYPE_2__*) ;
 scalar_t__ ws_recv_request (TYPE_2__*) ;

ws_status ws_recv_loop(ws_t self) {
  ws_private_t my = self->private_state;
  while (1) {
    ws_state new_state;
    switch (my->state) {
      case 128:
        new_state = ws_recv_request(self);
        break;

      case 129:
        new_state = ws_recv_headers(self);
        break;

      case 132:

        my->in->in_tail = my->in->in_head;
        new_state = -1;
        break;

      case 130:
        new_state = ws_recv_frame_length(self);
        break;

      case 131:
        new_state = ws_recv_frame(self);
        break;

      case 134:
      case 133:
      default:
        return WS_ERROR;
    }
    if (new_state < 0) {
      return WS_SUCCESS;
    }
    my->state = new_state;
    if (new_state == 134 || new_state == 133) {
      return WS_ERROR;
    }
    if (my->in->in_tail == my->in->in_head) {
      return WS_SUCCESS;
    }
  }
}

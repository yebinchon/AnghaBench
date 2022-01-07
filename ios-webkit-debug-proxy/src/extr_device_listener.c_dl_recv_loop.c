
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* dl_t ;
typedef scalar_t__ dl_status ;
typedef TYPE_3__* dl_private_t ;
struct TYPE_8__ {int has_length; size_t body_length; TYPE_1__* in; } ;
struct TYPE_7__ {TYPE_3__* private_state; } ;
struct TYPE_6__ {char* in_head; char* in_tail; } ;


 scalar_t__ DL_SUCCESS ;
 scalar_t__ dl_recv_packet (TYPE_2__*,char const*,size_t) ;
 size_t dl_sscanf_uint32 (char const*) ;

dl_status dl_recv_loop(dl_t self) {
  dl_private_t my = self->private_state;
  dl_status ret;
  const char *in_head = my->in->in_head;
  const char *in_tail = my->in->in_tail;
  while (1) {
    size_t in_length = in_tail - in_head;
    if (!my->has_length && in_length >= 4) {

      size_t len = dl_sscanf_uint32(in_head);
      my->body_length = len;
      my->has_length = 1;

    } else if (my->has_length && in_length >= my->body_length) {

      ret = dl_recv_packet(self, in_head, my->body_length);
      in_head += my->body_length;
      my->has_length = 0;
      my->body_length = 0;
      if (ret) {
        break;
      }
    } else {

      ret = DL_SUCCESS;
      break;
    }
  }
  my->in->in_head = in_head;
  return ret;
}

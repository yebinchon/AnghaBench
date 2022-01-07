
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_target {int dummy; } ;
struct udp_socket {int dummy; } ;
struct TYPE_3__ {int total_bytes; } ;
struct udp_msg {TYPE_1__ raw; } ;
struct TYPE_4__ {int (* on_receive ) (struct udp_msg*) ;} ;
 TYPE_2__* UDP_FUNC (struct udp_socket*) ;
 int assert (int) ;
 int rwm_fetch_lookup (TYPE_1__*,int*,int) ;
 int stub1 (struct udp_msg*) ;
 int stub2 (struct udp_msg*) ;
 int work_obsolete_generation (struct udp_msg*) ;
 int work_obsolete_hash (struct udp_msg*) ;
 int work_obsolete_pid (struct udp_msg*) ;
 int work_resend_request (struct udp_msg*) ;
 int work_resend_request_ext (struct udp_msg*) ;

int receive_message (struct udp_socket *u, struct udp_target *S, struct udp_msg *msg) {
  if (msg->raw.total_bytes >= 4) {

    int op;
    assert (rwm_fetch_lookup (&msg->raw, &op, 4) == 4);
    switch (op) {
    case 129:
      work_resend_request (msg);
      return 0;
    case 128:
      work_resend_request_ext (msg);
      return 0;
    case 133:
      return 0;
    case 134:
      return 0;
    case 130:
      work_obsolete_pid (msg);
      return 0;
    case 131:
      work_obsolete_hash (msg);
      return 0;
    case 132:
      work_obsolete_generation (msg);
      return 0;
    default:
      UDP_FUNC (u)->on_receive (msg);
      return 0;
    }
  } else {
    UDP_FUNC (u)->on_receive (msg);

    return 0;
  }
}

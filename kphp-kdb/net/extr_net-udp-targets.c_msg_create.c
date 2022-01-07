
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int max_confirmed; int send_num; } ;
struct udp_msg {int dummy; } ;
struct raw_message {int dummy; } ;


 int add_force_confirm (struct udp_target*,int) ;
 int add_received (struct udp_target*,int) ;
 scalar_t__ msg_is_dup (struct udp_target*,int) ;
 int rwm_free (struct raw_message*) ;
 struct udp_msg* udp_msg_create (struct raw_message*,int,struct udp_target*) ;
 int vkprintf (int,char*,int,int ,int ) ;

struct udp_msg *msg_create (struct raw_message *raw, int packet_id, struct udp_target *S) {
  if (packet_id >= 0) {
    add_force_confirm (S, packet_id);
    if (msg_is_dup (S, packet_id)) {
      vkprintf (1, "msg_is_dup: duplicate message %d. S->send_num = %d, S->max_confirmed = %d\n", packet_id, S->send_num, S->max_confirmed);
      rwm_free (raw);
      return 0;
    }
    add_received (S, packet_id);
  }
  struct udp_msg *msg = udp_msg_create (raw, packet_id, S);
  return msg;
}

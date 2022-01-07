
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_socket {int dummy; } ;
struct udp_message {int port; int ipv6; } ;
struct raw_message {int dummy; } ;
struct process_id {int dummy; } ;


 struct process_id PID ;
 int TL_UDP_OBSOLETE_HASH ;
 int assert (int) ;
 int out_buf_send_error (struct process_id*,int ,int ,int ,int ,struct raw_message*) ;
 int rwm_create (struct raw_message*,int*,int) ;

void send_error_obsolete_hash (struct udp_socket *u, struct udp_message *msg, long long hash) {
  static int z[10];
  z[0] = TL_UDP_OBSOLETE_HASH;
  *(long long *)(z + 1) = hash;
  *(struct process_id *)(z + 3) = PID;

  struct raw_message raw;
  assert (rwm_create (&raw, z, 24) == 24);

  out_buf_send_error (&PID, 0, 0, msg->ipv6, msg->port, &raw);
}

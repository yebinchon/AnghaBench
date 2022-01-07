
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_socket {int dummy; } ;
struct udp_message {int port; int ipv6; } ;
struct raw_message {int dummy; } ;
struct process_id {int dummy; } ;


 int PID ;
 int TL_UDP_OBSOLETE_PID ;
 int assert (int) ;
 int out_buf_send_error (int *,struct process_id*,int,int ,int ,struct raw_message*) ;
 int rwm_create (struct raw_message*,int*,int) ;

void send_error_obsolete_pid (struct udp_socket *u, struct udp_message *msg, struct process_id *remote_pid, struct process_id *local_pid, int generation) {
  static int z[10];
  z[0] = TL_UDP_OBSOLETE_PID;
  *(struct process_id *)(z + 1) = *local_pid;
  *(struct process_id *)(z + 4) = *local_pid;
  z[7] = generation;

  struct raw_message raw;
  assert (rwm_create (&raw, z, 32) == 32);

  out_buf_send_error (&PID, remote_pid, generation, msg->ipv6, msg->port, &raw);
}

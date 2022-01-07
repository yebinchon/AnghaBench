
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_socket {int dummy; } ;
struct udp_message {int dummy; } ;



int process_msg_noop (struct udp_socket *u, struct udp_message *msg) {
  return -1;
}

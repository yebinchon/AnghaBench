
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_socket {int dummy; } ;
struct udp_message {int dummy; } ;
struct process_id {int dummy; } ;



void send_error_wrong_pid (struct udp_socket *u, struct udp_message *msg, struct process_id *remote_pid, struct process_id *pid) {
}

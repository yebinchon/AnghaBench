
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target_set {int state; struct udp_target* S; int dst_port; int dst_ipv6; int generation; int utime; int pid; int port; int ip; } ;
struct udp_target {struct udp_target_set* ST; } ;
struct process_id {int utime; int pid; int port; int ip; } ;


 int assert (int ) ;
 struct udp_target* udp_target_alloc (struct process_id*,int ,int ,int ) ;

void udp_target_set_expand (struct udp_target_set *ST) {
  assert (ST && ST->state == 1);
  struct process_id P;
  P.ip = ST->ip;
  P.port = ST->port;
  P.pid = ST->pid;
  P.utime = ST->utime;

  struct udp_target *S = udp_target_alloc (&P, ST->generation, ST->dst_ipv6, ST->dst_port);

  ST->state = 2;
  ST->S = S;
  S->ST = ST;
}

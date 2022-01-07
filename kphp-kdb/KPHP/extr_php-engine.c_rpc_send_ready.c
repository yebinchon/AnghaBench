
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ our_port; scalar_t__ our_ip; } ;


 int RPC_READY ;
 int pid ;
 int ready_cnt ;
 int send_rpc_query (struct connection*,int ,int,int*,int) ;
 int start_time ;
 int worker_id ;

void rpc_send_ready (struct connection *c) {
  int q[100], qn = 0;
  qn += 2;
  q[qn++] = -1;
  q[qn++] = (int)c->our_ip;
  q[qn++] = (int)c->our_port;
  q[qn++] = pid;
  q[qn++] = start_time;
  q[qn++] = worker_id;
  q[qn++] = ready_cnt++;
  qn++;
  send_rpc_query (c, RPC_READY, -1, q, qn * 4);
}

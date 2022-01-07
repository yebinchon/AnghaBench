
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int total_bytes; } ;
struct connection {int last_response_time; int fd; } ;


 int RPC_PING ;
 int RPC_PONG ;
 int assert (int) ;
 int precise_now ;
 int rwm_fetch_data (struct raw_message*,int*,int) ;
 int tcp_rpc_conn_send_data (struct connection*,int,int*) ;
 int vkprintf (int,char*,int ,int,int) ;

int tcp_rpcc_default_execute (struct connection *c, int op, struct raw_message *raw) {
  vkprintf (1, "rpcc_execute: fd=%d, op=%d, len=%d\n", c->fd, op, raw->total_bytes);
  if (op == RPC_PING && raw->total_bytes == 12) {
    c->last_response_time = precise_now;
    static int Q[12];
    assert (rwm_fetch_data (raw, Q, 12) == 12);
    static int P[12];
    P[0] = RPC_PONG;
    P[1] = Q[1];
    P[2] = Q[2];
    tcp_rpc_conn_send_data (c, 12, P);
    return 0;
  }
  return 0;
}

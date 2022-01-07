
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcx_data {int out_packet_num; } ;
struct connection {int flags; int Out; scalar_t__ custom_data; int fd; } ;


 int C_RAWMSG ;
 int RPC_PING ;
 int compute_crc32 (int*,int) ;
 int flush_later (struct connection*) ;
 int tcp_rpc_conn_send_data (struct connection*,int,int*) ;
 int vkprintf (int,char*,int ,long long) ;
 int write_out (int *,int*,int) ;

void net_rpc_send_ping (struct connection *c, long long ping_id) {
  if (!(c->flags & C_RAWMSG)) {
    vkprintf (2, "Sending ping to fd=%d. ping_id = %lld\n", c->fd, ping_id);
    static int P[20];
    P[0] = 24;
    P[1] = ((struct rpcx_data *) ((c)->custom_data))->out_packet_num++;
    P[2] = RPC_PING;
    *(long long *)(P + 3) = ping_id;
    P[5] = compute_crc32 (P, 20);
    write_out (&c->Out, P, 24);
    flush_later (c);
  } else {
    static int P[20];
    P[0] = RPC_PING;
    *(long long *)(P + 1) = ping_id;
    tcp_rpc_conn_send_data (c, 12, P);
    flush_later (c);
  }
}

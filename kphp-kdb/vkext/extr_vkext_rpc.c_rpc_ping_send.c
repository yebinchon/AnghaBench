
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int dummy; } ;


 int RPC_PING ;
 int assert (int ) ;
 int buffer_clear (int ) ;
 int buffer_write_long (int ,long long) ;
 int buffer_write_reserve (int ,int) ;
 int outbuf ;
 int rpc_flush_out_force (struct rpc_server*,double) ;
 scalar_t__ rpc_write_handshake (struct rpc_server*,int ,double) ;

__attribute__((used)) static int rpc_ping_send (struct rpc_server *server, double timeout, long long value) {
  assert (outbuf);
  buffer_clear (outbuf);
  buffer_write_reserve (outbuf, 12);
  buffer_write_long (outbuf, value);
  if (rpc_write_handshake (server, RPC_PING, timeout) < 0) {
    return -1;
  }
  return rpc_flush_out_force (server, timeout);
}

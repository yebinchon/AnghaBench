
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int dummy; } ;
struct rpc_handshake_error {int error_code; } ;


 int rpc_server_seterror (struct rpc_server*,char*,int ) ;

__attribute__((used)) static int rpc_handshake_error_execute (struct rpc_server *server, char *answer, int answer_len) {
  rpc_server_seterror (server, "Rpc error", ((struct rpc_handshake_error *)answer)->error_code);
  return -1;
}

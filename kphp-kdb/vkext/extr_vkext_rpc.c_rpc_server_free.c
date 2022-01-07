
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {scalar_t__ magic; } ;


 int ADD_PFREE (int) ;
 int rpc_server_sleep (struct rpc_server*) ;
 int zzfree (struct rpc_server*,int) ;

__attribute__((used)) static void rpc_server_free (struct rpc_server *server) {
  rpc_server_sleep (server);

  server->magic = 0;
  zzfree (server, sizeof (*server));
  ADD_PFREE (sizeof (*server));
}

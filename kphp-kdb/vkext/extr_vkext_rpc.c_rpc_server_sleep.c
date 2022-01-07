
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_server {int * error; } ;


 scalar_t__ strlen (int *) ;
 int zzfree (int *,scalar_t__) ;

__attribute__((used)) static void rpc_server_sleep (struct rpc_server *server) {
  if (server->error != ((void*)0)) {
    zzfree (server->error, strlen (server->error) + 1);
    server->error = ((void*)0);
  }
}

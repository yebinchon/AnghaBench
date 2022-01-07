
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client_ctx ;


 int UNREACHABLE () ;
 int do_kill (int *) ;

__attribute__((used)) static int do_handshake_auth(client_ctx *cx) {
  UNREACHABLE();
  return do_kill(cx);
}

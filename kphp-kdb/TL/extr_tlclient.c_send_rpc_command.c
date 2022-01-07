
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int * P ;
 int PACKET_BUFFER_SIZE ;
 int additional ;
 int compiler ;
 int exit (int) ;
 struct connection* get_target_connection (int ) ;
 int kprintf (char*) ;
 int log_errors () ;
 int log_str (char*) ;
 int rpcc_send_query (struct connection*,int) ;
 int targ ;
 int tl_compiler_clear_errors (int *) ;
 int tl_serialize_rpc_function_call (int *,char*,int *,int,int *) ;
 int typename ;

int send_rpc_command (char *cmd) {
  tl_compiler_clear_errors (&compiler);
  int r = tl_serialize_rpc_function_call (&compiler, cmd, &P[5 + additional], PACKET_BUFFER_SIZE - 6 - additional, &typename);
  if (r < 0) {
    log_str ("tl_serialize_rpc_function_call fail. Errors:\n");
    log_errors ();
    return r;
  } else {
    struct connection *c = get_target_connection (targ);
    if (c == ((void*)0)) {
      kprintf ("get_target_connection returns NULL.\n");
      exit (1);
    }
    rpcc_send_query (c, r);
  }
  return 0;
}

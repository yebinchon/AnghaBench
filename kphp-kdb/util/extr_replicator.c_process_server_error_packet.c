
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_server_status {int dummy; } ;
struct repl_error {int session_id; } ;
struct connection {int dummy; } ;


 int destroy_server (struct repl_server_status*) ;
 struct repl_server_status* get_server_by_session (int ,int ) ;
 int process_generic_error_packet (struct connection*,struct repl_error*,int) ;

int process_server_error_packet (struct connection *c, struct repl_error *E, int len) {
  struct repl_server_status *S = get_server_by_session (E->session_id, 0);
  if (S) {
    destroy_server (S);
  }
  return process_generic_error_packet (c, E, len);
}

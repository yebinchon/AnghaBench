
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_error {int error; int session_id; int handshake_id; int error_message; } ;
struct connection {int remote_port; } ;


 int bad_error_packet (struct repl_error*,int) ;
 int errors_received ;
 int show_remote_ip (struct connection*) ;
 int vkprintf (int ,char*,int ,int ,int ,int ,int ,...) ;

int process_generic_error_packet (struct connection *c, struct repl_error *E, int len) {
  errors_received++;
  if (!bad_error_packet (E, len)) {
    vkprintf (0, "Received error packet in session %d:%d from %s:%d, error code %d: %s\n", E->handshake_id, E->session_id, show_remote_ip (c),
       c->remote_port, E->error, E->error_message);
  } else {
    vkprintf (0, "Received malformed error packet in session %d:%d from %s:%d, error code %d\n", E->handshake_id, E->session_id, show_remote_ip (c),
       c->remote_port, E->error);
  }
  return 0;
}

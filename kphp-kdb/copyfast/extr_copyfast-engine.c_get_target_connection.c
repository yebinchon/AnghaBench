
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {struct connection* next; } ;
struct conn_target {struct connection* last_conn; struct connection* first_conn; int outbound_connections; } ;


 scalar_t__ cr_ok ;
 scalar_t__ server_check_ready (struct connection*) ;

struct connection *get_target_connection (struct conn_target *targ) {
  struct connection *c;
  if (!targ->outbound_connections) {
    return 0;
  }
  c = targ->first_conn;
  while (1) {
    if (server_check_ready (c) == cr_ok) {
      return c;
    }
    if (c == targ->last_conn) { break;}
    c = c->next;
  }
  return 0;
}

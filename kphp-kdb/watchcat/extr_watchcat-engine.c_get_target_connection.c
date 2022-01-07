
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int unreliability; struct connection* next; } ;
struct conn_target {struct connection* first_conn; } ;


 int cr_ok ;
 int cr_stopped ;
 int server_check_ready (struct connection*) ;

struct connection *get_target_connection (struct conn_target *S) {
  struct connection *c, *d = 0;
  int r, u = 10000;
  if (!S) {
    return 0;
  }
  for (c = S->first_conn; c != (struct connection *) S; c = c->next) {
    r = server_check_ready (c);
    if (r == cr_ok) {
      return c;
    } else if (r == cr_stopped && c->unreliability < u) {
      u = c->unreliability;
      d = c;
    }
  }

  return d;
}

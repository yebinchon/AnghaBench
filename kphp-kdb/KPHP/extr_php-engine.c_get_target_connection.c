
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int unreliability; struct connection* next; } ;
struct conn_target {TYPE_1__* type; struct connection* first_conn; } ;
struct TYPE_2__ {int (* check_ready ) (struct connection*) ;} ;


 int cr_notyet ;
 int cr_ok ;
 int cr_stopped ;
 int stub1 (struct connection*) ;

struct connection *get_target_connection (struct conn_target *S, int force_flag) {
  struct connection *c, *d = ((void*)0);
  int u = 10000;
  if (!S) {
    return ((void*)0);
  }
  for (c = S->first_conn; c != (struct connection *)S; c = c->next) {
    int r = S->type->check_ready (c);
    if (r == cr_ok || (force_flag && r == cr_notyet)) {
      return c;
    } else if (r == cr_stopped && c->unreliability < u) {
      u = c->unreliability;
      d = c;
    }
  }
  return d;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ generation; struct connection* conn; } ;
struct TYPE_4__ {int targ; } ;
struct TYPE_6__ {TYPE_2__ conn; TYPE_1__ targ; } ;
struct relative {int type; TYPE_3__ conn; } ;
struct connection {scalar_t__ generation; } ;


 int assert (int ) ;
 struct connection* get_target_connection (int ) ;

struct connection *get_relative_connection (struct relative *x) {
  if (!x) {
    return 0;
  }
  struct connection *c;
  if (x->type == 0) {
    c = get_target_connection (x->conn.targ.targ);
  } else if (x->type == 1) {
    c = x->conn.conn.conn;
    if (c && c->generation != x->conn.conn.generation) {
      c = 0;
    }
  } else {
    assert (0);
  }
  return c;
}

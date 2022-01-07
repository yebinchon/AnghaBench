
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_7__* targ; } ;
struct TYPE_9__ {scalar_t__ generation; struct connection* conn; } ;
struct TYPE_11__ {TYPE_2__ targ; TYPE_1__ conn; } ;
struct relative {int type; size_t link_color; TYPE_6__* next; TYPE_5__* prev; TYPE_3__ conn; } ;
struct connection {scalar_t__ generation; struct connection* next; } ;
struct TYPE_12__ {int * total_links_color; int total_parents; int total_children; } ;
struct TYPE_16__ {TYPE_4__ structured; } ;
struct TYPE_15__ {struct connection* first_conn; } ;
struct TYPE_14__ {TYPE_5__* prev; } ;
struct TYPE_13__ {TYPE_6__* next; } ;


 TYPE_8__* STATS ;
 int assert (struct relative*) ;
 scalar_t__ cr_ok ;
 int destroy_target (TYPE_7__*) ;
 int fail_connection (struct connection*,int) ;
 int fprintf (int ,char*,...) ;
 struct connection* get_relative_connection (struct relative*) ;
 int rpc_send_divorce (struct connection*) ;
 scalar_t__ server_check_ready (struct connection*) ;
 int stderr ;
 int verbosity ;
 int zfree (struct relative*,int) ;

void delete_relative (struct relative *x, int force) {
  assert (x);
  if (verbosity >= 3) {
    fprintf (stderr, "delete_relative force = %d, x->type = %d\n", force, x->type);
  }
  struct connection *c = get_relative_connection (x);
  struct connection *s;
  if (x->type == 0) {
    s = x->conn.targ.targ->first_conn;
    while (s != (struct connection *)x->conn.targ.targ) {
      fail_connection (s, -1);
      s = s->next;
    }
  } else {
    s = x->conn.conn.conn;
    if (s && s->generation != x->conn.conn.generation) {
      s = 0;
    }
    if (s) {
      fail_connection (s, -1);
    }
  }

  if (x->type == 0) {
    destroy_target (x->conn.targ.targ);
    STATS->structured.total_children --;
  } else {
    STATS->structured.total_parents --;
  }
  STATS->structured.total_links_color[x->link_color]--;
  x->next->prev = x->prev;
  x->prev->next = x->next;
  zfree (x, sizeof (struct relative));
  if (c) {
    if (force) {
      if (server_check_ready (c) == cr_ok) {
        rpc_send_divorce (c);
      }
    }
  }
  if (verbosity >= 6) {
    fprintf (stderr, "delete_relative: done\n");
  }
}

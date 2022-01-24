#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_7__* targ; } ;
struct TYPE_9__ {scalar_t__ generation; struct connection* conn; } ;
struct TYPE_11__ {TYPE_2__ targ; TYPE_1__ conn; } ;
struct relative {int type; size_t link_color; TYPE_6__* next; TYPE_5__* prev; TYPE_3__ conn; } ;
struct connection {scalar_t__ generation; struct connection* next; } ;
struct TYPE_12__ {int /*<<< orphan*/ * total_links_color; int /*<<< orphan*/  total_parents; int /*<<< orphan*/  total_children; } ;
struct TYPE_16__ {TYPE_4__ structured; } ;
struct TYPE_15__ {struct connection* first_conn; } ;
struct TYPE_14__ {TYPE_5__* prev; } ;
struct TYPE_13__ {TYPE_6__* next; } ;

/* Variables and functions */
 TYPE_8__* STATS ; 
 int /*<<< orphan*/  FUNC0 (struct relative*) ; 
 scalar_t__ cr_ok ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct connection* FUNC4 (struct relative*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 scalar_t__ FUNC6 (struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC7 (struct relative*,int) ; 

void FUNC8 (struct relative *x, int force) {
  FUNC0 (x);
  if (verbosity >= 3) {
    FUNC3 (stderr, "delete_relative force = %d, x->type = %d\n", force, x->type);
  }
  struct connection *c = FUNC4 (x);
  struct connection *s;
  if (x->type == 0) {
    s = x->conn.targ.targ->first_conn;
    while (s != (struct connection *)x->conn.targ.targ) {
      FUNC2 (s, -1);
      s = s->next;
    }
  } else {
    s = x->conn.conn.conn;
    if (s && s->generation != x->conn.conn.generation) {
      s = 0;
    }
    if (s) {
      FUNC2 (s, -1);
    }
  }

  if (x->type == 0) {
    FUNC1 (x->conn.targ.targ);
    STATS->structured.total_children --;
  } else {
    STATS->structured.total_parents --;
  }
  STATS->structured.total_links_color[x->link_color]--;
  x->next->prev = x->prev;
  x->prev->next = x->next;
  FUNC7 (x, sizeof (struct relative));
  if (c) {
    if (force) {
      if (FUNC6 (c) == cr_ok) {
        FUNC5 (c);
      }
    }
  }
  if (verbosity >= 6) {
    FUNC3 (stderr, "delete_relative: done\n");
  }
}
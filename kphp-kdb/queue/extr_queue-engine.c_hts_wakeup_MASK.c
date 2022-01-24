#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hts_data {int query_flags; TYPE_2__* extra; } ;
struct connection {scalar_t__ status; int parse_state; scalar_t__ pending_queries; scalar_t__ generation; } ;
struct TYPE_6__ {int n; TYPE_1__** k; } ;
typedef  TYPE_2__ qkey_group ;
struct TYPE_5__ {char* name; scalar_t__ lock; int /*<<< orphan*/ * conn; scalar_t__ subscribed; } ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int QF_KEEPALIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
 scalar_t__ conn_expect_query ; 
 scalar_t__ conn_generation ; 
 scalar_t__ conn_wait_net ; 
 scalar_t__ conn_write_close ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct connection*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC7 (struct connection *c) {
//  fprintf (stderr, "HTS_WAKEUP: IN\n");
  struct hts_data *D = FUNC0(c);

  qkey_group *k = D->extra;

  if (verbosity > 2) {
    FUNC3 (stderr, "hts_wakeup : keys [");
    int i;
    for (i = 0; i < k->n; i++) {
      FUNC3 (stderr, "%s%c", k->k[i]->name, ",]"[i + 1 == k->n]);
    }
    FUNC3 (stderr, "\n");
  }

  FUNC1 (c->status == conn_expect_query || c->status == conn_wait_net);
  c->status = conn_expect_query;
  FUNC2 (c);

  if (!(D->query_flags & QF_KEEPALIVE)) {
    c->status = conn_write_close;
    c->parse_state = -1;
  }

  char *ans = FUNC4 (k);
  c->generation = ++conn_generation;
  c->pending_queries = 0;

  int i;
  for (i = 0; i < k->n; i++) {
    k->k[i]->lock--;
    k->k[i]->subscribed = 0;
    k->k[i]->conn = NULL;
    FUNC1 (k->k[i]->lock >= 0);
  }
  FUNC6 (k);
  D->extra = NULL;

//  fprintf (stderr, "HTS_WAKEUP: OUT\n");
  return FUNC5 (c, ans);
}
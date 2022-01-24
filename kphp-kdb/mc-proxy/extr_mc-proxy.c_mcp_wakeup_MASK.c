#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mcs_data {int query_type; } ;
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  queries_ok; int /*<<< orphan*/  status; scalar_t__ pending_queries; scalar_t__ generation; } ;

/* Variables and functions */
 struct mcs_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  conn_expect_query ; 
 scalar_t__ conn_generation ; 
 int /*<<< orphan*/  FUNC2 (struct connection*) ; 
#define  mct_add 134 
#define  mct_decr 133 
#define  mct_delete 132 
#define  mct_get 131 
#define  mct_incr 130 
#define  mct_replace 129 
#define  mct_set 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC4 (struct connection *c) {
  struct mcs_data *D = FUNC0(c);

  c->generation = ++conn_generation;
  c->pending_queries = 0;
  c->status = conn_expect_query;

  switch (D->query_type & 0x2fff) {
  case mct_get:
    FUNC3 (&c->Out, "END\r\n", 5);
    break;
  case mct_incr:
  case mct_decr:
  case mct_delete:
    if (!c->queries_ok) {
      FUNC3 (&c->Out, "NOT_FOUND\r\n", 11);
    }
    break;
  case mct_add:
  case mct_replace:
  case mct_set:
    if (!c->queries_ok) {
      FUNC3 (&c->Out, "NOT_STORED\r\n", 12);
    }
    break;
  }
  FUNC1 (c);
  FUNC2 (c);
  return 0;
}
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
struct binlog_wait_query {int /*<<< orphan*/  (* on_complete ) (struct binlog_wait_query*) ;struct binlog_wait_query* x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct binlog_wait_query*) ; 
 int /*<<< orphan*/  binlog_wait_time_tree ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_binlog_wait_time ; 
 int /*<<< orphan*/  FUNC2 (struct binlog_wait_query*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct binlog_wait_query*) ; 
 struct binlog_wait_query* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct binlog_wait_query*,int) ; 

void FUNC7 (void) {
  while (FUNC1 (next_binlog_wait_time) > 0) {
    FUNC0 (FUNC5 (binlog_wait_time_tree));
    struct binlog_wait_query *Q = FUNC5 (binlog_wait_time_tree)->x;
    FUNC0 (Q);
    Q->on_complete (Q);
    binlog_wait_time_tree = FUNC4 (binlog_wait_time_tree, Q);
    FUNC3 ();
    FUNC6 (Q, sizeof (*Q));
  }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct binlog_wait_query {int /*<<< orphan*/  (* on_complete ) (struct binlog_wait_query*) ;} ;
struct TYPE_2__ {struct binlog_wait_query* x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct binlog_wait_query*) ; 
 int /*<<< orphan*/  binlog_wait_tree ; 
 long long FUNC1 () ; 
 long long next_binlog_wait_pos ; 
 int /*<<< orphan*/  FUNC2 (struct binlog_wait_query*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct binlog_wait_query*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct binlog_wait_query*,int) ; 

void FUNC7 (void) {
  long long cur_pos = FUNC1 ();
//  vkprintf (2, "cur_pos = %lld, next_pos = %lld\n", cur_pos, next_binlog_wait_pos);
  while (cur_pos >= next_binlog_wait_pos) {
    struct binlog_wait_query *Q = FUNC5 (binlog_wait_tree)->x;
    FUNC0 (Q);
    Q->on_complete (Q);
    binlog_wait_tree = FUNC4 (binlog_wait_tree, Q);
    FUNC3 ();
    FUNC6 (Q, sizeof (*Q));
  }
}
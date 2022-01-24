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
struct binlog_pos {long long pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  binlog_pos_tree ; 
 struct binlog_pos FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct binlog_pos,int /*<<< orphan*/ ) ; 

void FUNC4 (long long pos, int binlog_replay) {
  struct binlog_pos t;
  t = FUNC1 (binlog_replay);
  FUNC0 (t.pos == pos);
  binlog_pos_tree = FUNC3 (binlog_pos_tree, t, FUNC2 ());
}
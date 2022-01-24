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
struct binlog_pos {long long pos; scalar_t__ timestamp; scalar_t__ crc32; } ;
struct tree_binlog_pos {struct binlog_pos x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tree_binlog_pos*) ; 
 int /*<<< orphan*/  binlog_pos_tree ; 
 struct binlog_pos FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct binlog_pos) ; 
 struct tree_binlog_pos* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (long long,scalar_t__,scalar_t__) ; 

void FUNC5 (long long pos, int binlog_replay) {
  struct binlog_pos t;
  t.pos = pos;
  t.crc32 = 0;
  t.timestamp = 0;
  binlog_pos_tree = FUNC2 (binlog_pos_tree, t);
  if (!binlog_pos_tree) {
    t = FUNC1 (binlog_replay);
  } else {
    struct tree_binlog_pos *T = FUNC3 (binlog_pos_tree);
    FUNC0 (T);
    t = T->x;
  }
  FUNC4 (t.pos, t.crc32, t.timestamp);
}
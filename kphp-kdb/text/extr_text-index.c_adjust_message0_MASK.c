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

/* Variables and functions */
 int /*<<< orphan*/ * UserMsgDel ; 
 int /*<<< orphan*/ * UserMsgExtras ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int current_extra_mask ; 
 int /*<<< orphan*/  discarded_rec ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3 (int user_id, int local_id, int flags, int op, int *extra) {
  int uid = FUNC1 (user_id);
  if (uid < 0 || local_id <= 0) {
    discarded_rec++;
    return;
  }
  UserMsgDel[uid]++;
  if (extra) {
    FUNC0 (!(flags & ~current_extra_mask) && flags);
    UserMsgExtras[uid] += FUNC2 (flags & current_extra_mask);
  }
}
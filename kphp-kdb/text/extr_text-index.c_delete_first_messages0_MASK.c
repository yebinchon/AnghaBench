#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_t ;
struct TYPE_3__ {int user_id; int first_local_id; } ;

/* Variables and functions */
 TYPE_1__** User ; 
 int* UserMsgCnt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  discarded_rec ; 
 scalar_t__ ignore_delete_first_messages ; 
 int /*<<< orphan*/  tot_users ; 
 TYPE_1__* FUNC2 (int) ; 

void FUNC3 (int user_id, int first_local_id) {
  int uid = FUNC1 (user_id);
  if (uid < 0 || ignore_delete_first_messages) {
    discarded_rec++;
    return;
  }
  FUNC0 (first_local_id > 0 && first_local_id <= UserMsgCnt[uid] + 1);
  if (!User[uid]) {
    User[uid] = FUNC2 (sizeof (user_t));
    User[uid]->user_id = user_id;
    tot_users++;
  }
  if (User[uid]->first_local_id < first_local_id) {
    User[uid]->first_local_id = first_local_id;
  }
}
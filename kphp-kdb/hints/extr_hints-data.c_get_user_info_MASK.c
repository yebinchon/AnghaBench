#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MEMORY_CHANGES_PERCENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 (int) ; 
 int max_memory ; 

int FUNC5 (int user_id) {
  int local_user_id = FUNC4 (user_id);
  if (local_user_id == -1) {
    return -3;
  }

  int result;
  if (local_user_id == 0) {
    result = -1;
  } else {
    user *cur_user = FUNC2 (user_id);
    FUNC1 (cur_user);

    result = FUNC0(cur_user->flags);
  }

  if (result == -1 && FUNC3() > max_memory * MEMORY_CHANGES_PERCENT) {
    result = -2;
  }

  return result;
}
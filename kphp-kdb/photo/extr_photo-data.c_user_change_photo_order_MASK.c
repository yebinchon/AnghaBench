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
typedef  int /*<<< orphan*/  user ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ write_only ; 

int FUNC5 (user *u, int pid, int pid_near, int is_next) {
//  dbg ("user_change_photo_order %d: photo_id = %d, photo_id_near = %d, is_next = %d\n", u->id, pid, pid_near, is_next);

  if (write_only) {
    return 1;
  }

  FUNC0 (FUNC4 (u));

  int aid = FUNC2 (u, pid);
  if (aid == 0) {
    return 0;
  }

  if (pid_near != 0 && aid != FUNC2 (u, pid_near)) {
    return 0;
  }

  data *d = FUNC3 (u, aid);
  if (d == NULL) {
    return 0;
  }

  return FUNC1 (d, pid, pid_near, is_next) > -1;
}
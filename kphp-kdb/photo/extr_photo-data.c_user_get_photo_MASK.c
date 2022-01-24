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
typedef  int /*<<< orphan*/  actual_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6 (user *u, int pid, const int force, actual_object *o) {
  FUNC0 (FUNC5 (u));

  int aid = FUNC2 (u, pid);
  if (aid == 0) {
    FUNC1 ("no album found (pid->aid)\n");
    return -1;
  }
  data *d = FUNC4 (u, aid);
  if (d == NULL) {
    FUNC1 ("no album data found\n");
    return -1;
  }
  return FUNC3 (d, pid, force, o);
}
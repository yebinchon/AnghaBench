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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ write_only ; 

int FUNC7 (user *u, int pid) {
  if (write_only) {
    return 1;
  }

  int aid = FUNC5 (u, pid);
  if (aid == 0) {
    return 0;
  }
  data *d = FUNC6 (u, aid);
  if (d == NULL) {
    return 0;
  }
  if (FUNC3 (d, pid) == 0) {
    return 0;
  }
  if (FUNC2 (d) >= FUNC0 (aid)) {
    return 0;
  }
  FUNC1 (FUNC4 (d, pid) > -1);
  return 1;
}
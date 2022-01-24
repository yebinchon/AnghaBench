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
typedef  scalar_t__ uv_pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int UV_EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

int FUNC2(uv_pid_t pid, int* priority) {
  int r;

  if (priority == NULL)
    return UV_EINVAL;

  errno = 0;
  r = FUNC1(PRIO_PROCESS, (int) pid);

  if (r == -1 && errno != 0)
    return FUNC0(errno);

  *priority = r;
  return 0;
}
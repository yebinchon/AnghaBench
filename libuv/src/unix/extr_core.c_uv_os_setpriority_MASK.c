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
 int UV_PRIORITY_HIGHEST ; 
 int UV_PRIORITY_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 

int FUNC2(uv_pid_t pid, int priority) {
  if (priority < UV_PRIORITY_HIGHEST || priority > UV_PRIORITY_LOW)
    return UV_EINVAL;

  if (FUNC1(PRIO_PROCESS, (int) pid, priority) != 0)
    return FUNC0(errno);

  return 0;
}
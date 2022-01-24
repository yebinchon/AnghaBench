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
typedef  int /*<<< orphan*/  uv_pid_t ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int ABOVE_NORMAL_PRIORITY_CLASS ; 
 int BELOW_NORMAL_PRIORITY_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HIGH_PRIORITY_CLASS ; 
 int IDLE_PRIORITY_CLASS ; 
 int NORMAL_PRIORITY_CLASS ; 
 int /*<<< orphan*/  PROCESS_SET_INFORMATION ; 
 int REALTIME_PRIORITY_CLASS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int UV_EINVAL ; 
 int UV_PRIORITY_ABOVE_NORMAL ; 
 int UV_PRIORITY_BELOW_NORMAL ; 
 int UV_PRIORITY_HIGH ; 
 int UV_PRIORITY_HIGHEST ; 
 int UV_PRIORITY_LOW ; 
 int UV_PRIORITY_NORMAL ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(uv_pid_t pid, int priority) {
  HANDLE handle;
  int priority_class;
  int r;

  /* Map Unix nice values to Windows priority classes. */
  if (priority < UV_PRIORITY_HIGHEST || priority > UV_PRIORITY_LOW)
    return UV_EINVAL;
  else if (priority < UV_PRIORITY_HIGH)
    priority_class = REALTIME_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_ABOVE_NORMAL)
    priority_class = HIGH_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_NORMAL)
    priority_class = ABOVE_NORMAL_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_BELOW_NORMAL)
    priority_class = NORMAL_PRIORITY_CLASS;
  else if (priority < UV_PRIORITY_LOW)
    priority_class = BELOW_NORMAL_PRIORITY_CLASS;
  else
    priority_class = IDLE_PRIORITY_CLASS;

  r = FUNC3(pid, PROCESS_SET_INFORMATION, &handle);

  if (r != 0)
    return r;

  if (FUNC2(handle, priority_class) == 0)
    r = FUNC4(FUNC1());

  FUNC0(handle);
  return r;
}
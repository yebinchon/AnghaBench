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
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int UV_ESRCH ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(uv_pid_t pid, int access, HANDLE* handle) {
  int r;

  if (pid == 0)
    *handle = FUNC0();
  else
    *handle = FUNC2(access, FALSE, pid);

  if (*handle == NULL) {
    r = FUNC1();

    if (r == ERROR_INVALID_PARAMETER)
      return UV_ESRCH;
    else
      return FUNC3(r);
  }

  return 0;
}
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
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ERROR_INVALID_HANDLE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static int FUNC3(uv_loop_t* loop, HANDLE handle, HANDLE* dup) {
  HANDLE current_process;


  /* _get_osfhandle will sometimes return -2 in case of an error. This seems to
   * happen when fd <= 2 and the process' corresponding stdio handle is set to
   * NULL. Unfortunately DuplicateHandle will happily duplicate (HANDLE) -2, so
   * this situation goes unnoticed until someone tries to use the duplicate.
   * Therefore we filter out known-invalid handles here. */
  if (handle == INVALID_HANDLE_VALUE ||
      handle == NULL ||
      handle == (HANDLE) -2) {
    *dup = INVALID_HANDLE_VALUE;
    return ERROR_INVALID_HANDLE;
  }

  current_process = FUNC1();

  if (!FUNC0(current_process,
                       handle,
                       current_process,
                       dup,
                       0,
                       TRUE,
                       DUPLICATE_SAME_ACCESS)) {
    *dup = INVALID_HANDLE_VALUE;
    return FUNC2();
  }

  return 0;
}
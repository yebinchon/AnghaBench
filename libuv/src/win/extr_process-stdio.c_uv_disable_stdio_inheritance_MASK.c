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
struct TYPE_3__ {int /*<<< orphan*/  lpReserved2; int /*<<< orphan*/  cbReserved2; } ;
typedef  TYPE_1__ STARTUPINFOW ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HANDLE_FLAG_INHERIT ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  STD_ERROR_HANDLE ; 
 int /*<<< orphan*/  STD_INPUT_HANDLE ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(void) {
  HANDLE handle;
  STARTUPINFOW si;

  /* Make the windows stdio handles non-inheritable. */
  handle = FUNC1(STD_INPUT_HANDLE);
  if (handle != NULL && handle != INVALID_HANDLE_VALUE)
    FUNC2(handle, HANDLE_FLAG_INHERIT, 0);

  handle = FUNC1(STD_OUTPUT_HANDLE);
  if (handle != NULL && handle != INVALID_HANDLE_VALUE)
    FUNC2(handle, HANDLE_FLAG_INHERIT, 0);

  handle = FUNC1(STD_ERROR_HANDLE);
  if (handle != NULL && handle != INVALID_HANDLE_VALUE)
    FUNC2(handle, HANDLE_FLAG_INHERIT, 0);

  /* Make inherited CRT FDs non-inheritable. */
  FUNC0(&si);
  if (FUNC4(si.lpReserved2, si.cbReserved2))
    FUNC3(si.lpReserved2);
}
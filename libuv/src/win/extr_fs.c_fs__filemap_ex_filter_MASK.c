#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* ExceptionRecord; } ;
struct TYPE_4__ {int NumberParameters; int /*<<< orphan*/ * ExceptionInformation; } ;
typedef  TYPE_2__* PEXCEPTION_POINTERS ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int ERROR_SUCCESS ; 
 scalar_t__ EXCEPTION_CONTINUE_SEARCH ; 
 scalar_t__ EXCEPTION_EXECUTE_HANDLER ; 
 scalar_t__ EXCEPTION_IN_PAGE_ERROR ; 
 int UV_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

LONG FUNC2(LONG excode, PEXCEPTION_POINTERS pep,
                           int* perror) {
  if (excode != EXCEPTION_IN_PAGE_ERROR) {
    return EXCEPTION_CONTINUE_SEARCH;
  }

  FUNC0(perror != NULL);
  if (pep != NULL && pep->ExceptionRecord != NULL &&
      pep->ExceptionRecord->NumberParameters >= 3) {
    NTSTATUS status = (NTSTATUS)pep->ExceptionRecord->ExceptionInformation[3];
    *perror = FUNC1(status);
    if (*perror != ERROR_SUCCESS) {
      return EXCEPTION_EXECUTE_HANDLER;
    }
  }
  *perror = UV_UNKNOWN;
  return EXCEPTION_EXECUTE_HANDLER;
}
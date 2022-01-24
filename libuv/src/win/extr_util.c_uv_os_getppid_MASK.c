#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uv_pid_t ;
struct TYPE_4__ {int dwSize; scalar_t__ th32ProcessID; int th32ParentProcessID; } ;
typedef  TYPE_1__ PROCESSENTRY32 ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  TH32CS_SNAPPROCESS ; 

uv_pid_t FUNC5(void) {
  int parent_pid = -1;
  HANDLE handle;
  PROCESSENTRY32 pe;
  DWORD current_pid = FUNC2();

  pe.dwSize = sizeof(PROCESSENTRY32);
  handle = FUNC1(TH32CS_SNAPPROCESS, 0);

  if (FUNC3(handle, &pe)) {
    do {
      if (pe.th32ProcessID == current_pid) {
        parent_pid = pe.th32ParentProcessID;
        break;
      }
    } while( FUNC4(handle, &pe));
  }

  FUNC0(handle);
  return parent_pid;
}
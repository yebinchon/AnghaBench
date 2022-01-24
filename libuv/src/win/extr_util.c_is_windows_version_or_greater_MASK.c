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
typedef  void* WORD ;
struct TYPE_4__ {int dwOSVersionInfoSize; void* wServicePackMinor; void* wServicePackMajor; void* dwMinorVersion; void* dwMajorVersion; } ;
typedef  TYPE_1__ OSVERSIONINFOEX ;
typedef  int /*<<< orphan*/  DWORDLONG ;
typedef  void* DWORD ;

/* Variables and functions */
 int VER_GREATER_EQUAL ; 
 int VER_MAJORVERSION ; 
 int VER_MINORVERSION ; 
 int VER_SERVICEPACKMAJOR ; 
 int VER_SERVICEPACKMINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(DWORD os_major,
                                         DWORD os_minor,
                                         WORD service_pack_major,
                                         WORD service_pack_minor) {
  OSVERSIONINFOEX osvi;
  DWORDLONG condition_mask = 0;
  int op = VER_GREATER_EQUAL;

  /* Initialize the OSVERSIONINFOEX structure. */
  FUNC2(&osvi, sizeof(OSVERSIONINFOEX));
  osvi.dwOSVersionInfoSize = sizeof(OSVERSIONINFOEX);
  osvi.dwMajorVersion = os_major;
  osvi.dwMinorVersion = os_minor;
  osvi.wServicePackMajor = service_pack_major;
  osvi.wServicePackMinor = service_pack_minor;

  /* Initialize the condition mask. */
  FUNC0(condition_mask, VER_MAJORVERSION, op);
  FUNC0(condition_mask, VER_MINORVERSION, op);
  FUNC0(condition_mask, VER_SERVICEPACKMAJOR, op);
  FUNC0(condition_mask, VER_SERVICEPACKMINOR, op);

  /* Perform the test. */
  return (int) FUNC1(
    &osvi,
    VER_MAJORVERSION | VER_MINORVERSION |
    VER_SERVICEPACKMAJOR | VER_SERVICEPACKMINOR,
    condition_mask);
}
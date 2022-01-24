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
typedef  int uint64_t ;
struct uvmexp {scalar_t__ free; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int CTL_VM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_UVMEXP ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*,int,struct uvmexp*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uint64_t FUNC3(void) {
  struct uvmexp info;
  size_t size = sizeof(info);
  int which[] = {CTL_VM, VM_UVMEXP};

  if (FUNC2(which, 2, &info, &size, NULL, 0))
    return FUNC0(errno);

  return (uint64_t) info.free * FUNC1(_SC_PAGESIZE);
}
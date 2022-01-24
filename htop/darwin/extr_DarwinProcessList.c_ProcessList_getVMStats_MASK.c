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
typedef  scalar_t__ vm_statistics_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  host_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HOST_VM_INFO ; 
 int /*<<< orphan*/  HOST_VM_INFO_COUNT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(vm_statistics_t p) {
    mach_msg_type_number_t info_size = HOST_VM_INFO_COUNT;

    if (FUNC1(FUNC2(), HOST_VM_INFO, (host_info_t)p, &info_size) != 0)
       FUNC0("Unable to retrieve VM statistics\n");
}
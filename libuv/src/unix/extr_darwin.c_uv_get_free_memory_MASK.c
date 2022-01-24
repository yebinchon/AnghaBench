#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ free_count; } ;
typedef  TYPE_1__ vm_statistics_data_t ;
typedef  int uint64_t ;
typedef  int mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  integer_t ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  host_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_VM_INFO ; 
 scalar_t__ KERN_SUCCESS ; 
 int UV_EINVAL ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

uint64_t FUNC3(void) {
  vm_statistics_data_t info;
  mach_msg_type_number_t count = sizeof(info) / sizeof(integer_t);

  if (FUNC0(FUNC1(), HOST_VM_INFO,
                      (host_info_t)&info, &count) != KERN_SUCCESS) {
    return UV_EINVAL;  /* FIXME(bnoordhuis) Translate error. */
  }

  return (uint64_t) info.free_count * FUNC2(_SC_PAGESIZE);
}
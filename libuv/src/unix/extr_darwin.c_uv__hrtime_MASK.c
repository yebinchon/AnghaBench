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
typedef  int /*<<< orphan*/  uv_clocktype_t ;
typedef  int uint64_t ;
struct TYPE_3__ {int numer; int denom; } ;
typedef  TYPE_1__ mach_timebase_info_data_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  uint32_t ; 

uint64_t FUNC4(uv_clocktype_t type) {
  static mach_timebase_info_data_t info;

  if ((FUNC0(uint32_t, info.numer) == 0 ||
       FUNC0(uint32_t, info.denom) == 0) &&
      FUNC3(&info) != KERN_SUCCESS)
    FUNC1();

  return FUNC2() * info.numer / info.denom;
}
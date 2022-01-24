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
typedef  int /*<<< orphan*/  freecount ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

uint64_t FUNC3(void) {
  int freecount;
  size_t size = sizeof(freecount);

  if (FUNC2("vm.stats.vm.v_free_count", &freecount, &size, NULL, 0))
    return FUNC0(errno);

  return (uint64_t) freecount * FUNC1(_SC_PAGESIZE);

}
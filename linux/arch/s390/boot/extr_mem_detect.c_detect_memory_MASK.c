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
struct TYPE_2__ {int /*<<< orphan*/  info_source; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_DETECT_BIN_SEARCH ; 
 int /*<<< orphan*/  MEM_DETECT_DIAG260 ; 
 int /*<<< orphan*/  MEM_DETECT_SCLP_READ_INFO ; 
 int /*<<< orphan*/  MEM_DETECT_SCLP_STOR_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ max_physmem_end ; 
 TYPE_1__ mem_detect ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void)
{
	FUNC3(&max_physmem_end);

	if (!FUNC4()) {
		mem_detect.info_source = MEM_DETECT_SCLP_STOR_INFO;
		return;
	}

	if (!FUNC1()) {
		mem_detect.info_source = MEM_DETECT_DIAG260;
		return;
	}

	if (max_physmem_end) {
		FUNC0(0, max_physmem_end);
		mem_detect.info_source = MEM_DETECT_SCLP_READ_INFO;
		return;
	}

	FUNC5();
	mem_detect.info_source = MEM_DETECT_BIN_SEARCH;
	max_physmem_end = FUNC2();
}
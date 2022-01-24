#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * reserved; int /*<<< orphan*/ * active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONFIG_CPU_ASID_BITS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  active_asids ; 
 scalar_t__ FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asid_flush_cpu_ctxt ; 
 TYPE_1__ asid_info ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reserved_asids ; 

__attribute__((used)) static int FUNC7(void)
{
	FUNC0(((1 << CONFIG_CPU_ASID_BITS) - 1) <= FUNC4());

	if (FUNC3(&asid_info, CONFIG_CPU_ASID_BITS, 1,
				asid_flush_cpu_ctxt))
		FUNC5("Unable to initialize ASID allocator for %lu ASIDs\n",
		      FUNC1(&asid_info));

	asid_info.active = &active_asids;
	asid_info.reserved = &reserved_asids;

	FUNC6("ASID allocator initialised with %lu entries\n",
		FUNC2(&asid_info));

	return 0;
}
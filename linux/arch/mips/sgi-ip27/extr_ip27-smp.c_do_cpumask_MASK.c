#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nasid_t ;
struct TYPE_12__ {scalar_t__ brd_nasid; } ;
typedef  TYPE_2__ lboard_t ;
typedef  int /*<<< orphan*/  klinfo_t ;
struct TYPE_11__ {size_t virtid; int flags; } ;
struct TYPE_13__ {TYPE_1__ cpu_info; } ;
typedef  TYPE_3__ klcpu_t ;
typedef  size_t cpuid_t ;
typedef  int /*<<< orphan*/  cnodeid_t ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int KLINFO_ENABLE ; 
 int /*<<< orphan*/  KLSTRUCT_CPU ; 
 int /*<<< orphan*/  KLTYPE_IP27 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int NR_CPUS ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 
 int /*<<< orphan*/ * cpuid_to_compact_node ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int) ; 

__attribute__((used)) static int FUNC8(cnodeid_t cnode, nasid_t nasid, int highest)
{
	static int tot_cpus_found = 0;
	lboard_t *brd;
	klcpu_t *acpu;
	int cpus_found = 0;
	cpuid_t cpuid;

	brd = FUNC5((lboard_t *)FUNC1(nasid), KLTYPE_IP27);

	do {
		acpu = (klcpu_t *)FUNC4(brd, KLSTRUCT_CPU);
		while (acpu) {
			cpuid = acpu->cpu_info.virtid;
			/* cnode is not valid for completely disabled brds */
			if (FUNC6(brd) == brd->brd_nasid)
				cpuid_to_compact_node[cpuid] = cnode;
			if (cpuid > highest)
				highest = cpuid;
			/* Only let it join in if it's marked enabled */
			if ((acpu->cpu_info.flags & KLINFO_ENABLE) &&
			    (tot_cpus_found != NR_CPUS)) {
				FUNC7(cpuid, true);
				FUNC2(cpuid, tot_cpus_found);
				cpus_found++;
				tot_cpus_found++;
			}
			acpu = (klcpu_t *)FUNC3(brd, (klinfo_t *)acpu,
								KLSTRUCT_CPU);
		}
		brd = FUNC0(brd);
		if (!brd)
			break;

		brd = FUNC5(brd, KLTYPE_IP27);
	} while (brd);

	return highest;
}
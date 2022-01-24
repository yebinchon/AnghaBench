#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nasid_t ;
typedef  int /*<<< orphan*/  lboard_t ;
typedef  int /*<<< orphan*/  klinfo_t ;
struct TYPE_4__ {int physid; } ;
struct TYPE_5__ {TYPE_1__ cpu_info; } ;
typedef  TYPE_2__ klcpu_t ;

/* Variables and functions */
 int /*<<< orphan*/  KLSTRUCT_CPU ; 
 int /*<<< orphan*/  KLTYPE_IP27 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

klcpu_t *FUNC4(nasid_t nasid, int slice)
{
	lboard_t *brd;
	klcpu_t *acpu;

	if (!(brd = FUNC3((lboard_t *)FUNC0(nasid), KLTYPE_IP27)))
		return (klcpu_t *)NULL;

	if (!(acpu = (klcpu_t *)FUNC2(brd, KLSTRUCT_CPU)))
		return (klcpu_t *)NULL;

	do {
		if ((acpu->cpu_info.physid) == slice)
			return acpu;
	} while ((acpu = (klcpu_t *)FUNC1(brd, (klinfo_t *)acpu,
								KLSTRUCT_CPU)));
	return (klcpu_t *)NULL;
}
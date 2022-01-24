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
struct TYPE_2__ {int /*<<< orphan*/ * dcr_offset; int /*<<< orphan*/  dcr_host; } ;

/* Variables and functions */
 size_t CPM_ER ; 
 TYPE_1__ cpm ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(unsigned int mask)
{
	unsigned int er_save;

	/* update CPM_ER state */
	er_save = FUNC1(CPM_ER, mask);

	/* go to wait state so that CPM0_ER[CPU] can take effect */
	FUNC0();

	/* restore CPM_ER state */
	FUNC2(cpm.dcr_host, cpm.dcr_offset[CPM_ER], er_save);
}
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
struct intel_uncore_box {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNBEP_PMON_BOX_CTL_INT ; 
 unsigned int FUNC0 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_uncore_box *box)
{
	unsigned msr = FUNC0(box);

	if (msr)
		FUNC1(msr, SNBEP_PMON_BOX_CTL_INT);
}
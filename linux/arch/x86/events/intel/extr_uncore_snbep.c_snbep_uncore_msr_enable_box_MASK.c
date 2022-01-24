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
typedef  int /*<<< orphan*/  u64 ;
struct intel_uncore_box {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNBEP_PMON_BOX_CTL_FRZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct intel_uncore_box *box)
{
	u64 config;
	unsigned msr;

	msr = FUNC1(box);
	if (msr) {
		FUNC0(msr, config);
		config &= ~SNBEP_PMON_BOX_CTL_FRZ;
		FUNC2(msr, config);
	}
}
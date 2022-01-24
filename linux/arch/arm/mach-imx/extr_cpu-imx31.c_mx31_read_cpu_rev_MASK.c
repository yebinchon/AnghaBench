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
typedef  int u32 ;
struct TYPE_3__ {int srev; char* name; int rev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int IMX_CHIP_REVISION_UNKNOWN ; 
 scalar_t__ MX31_IIM_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ MXC_IIMSREV ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mx31_cpu_type ; 

__attribute__((used)) static int FUNC4(void)
{
	u32 i, srev;

	/* read SREV register from IIM module */
	srev = FUNC3(FUNC1(MX31_IIM_BASE_ADDR + MXC_IIMSREV));
	srev &= 0xff;

	for (i = 0; i < FUNC0(mx31_cpu_type); i++)
		if (srev == mx31_cpu_type[i].srev) {
			FUNC2(mx31_cpu_type[i].name,
						mx31_cpu_type[i].rev);
			return mx31_cpu_type[i].rev;
		}

	FUNC2("i.MX31", IMX_CHIP_REVISION_UNKNOWN);
	return IMX_CHIP_REVISION_UNKNOWN;
}
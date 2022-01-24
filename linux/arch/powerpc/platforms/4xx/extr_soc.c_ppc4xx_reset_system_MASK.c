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
typedef  int u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int DBCR0_RST_SYSTEM ; 
 int /*<<< orphan*/  SPRN_DBCR0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

void FUNC4(char *cmd)
{
	struct device_node *np;
	u32 reset_type = DBCR0_RST_SYSTEM;
	const u32 *prop;

	np = FUNC2(0, NULL);
	if (np) {
		prop = FUNC3(np, "reset-type", NULL);

		/*
		 * Check if property exists and if it is in range:
		 * 1 - PPC4xx core reset
		 * 2 - PPC4xx chip reset
		 * 3 - PPC4xx system reset (default)
		 */
		if ((prop) && ((prop[0] >= 1) && (prop[0] <= 3)))
			reset_type = prop[0] << 28;
	}

	FUNC1(SPRN_DBCR0, FUNC0(SPRN_DBCR0) | reset_type);

	while (1)
		;	/* Just in case the reset doesn't work */
}
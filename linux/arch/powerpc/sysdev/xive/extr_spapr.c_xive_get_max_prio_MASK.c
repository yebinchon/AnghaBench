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
typedef  int u8 ;
typedef  int u32 ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 struct device_node* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static bool FUNC4(u8 *max_prio)
{
	struct device_node *rootdn;
	const __be32 *reg;
	u32 len;
	int prio, found;

	rootdn = FUNC1("/");
	if (!rootdn) {
		FUNC3("not root node found !\n");
		return false;
	}

	reg = FUNC2(rootdn, "ibm,plat-res-int-priorities", &len);
	if (!reg) {
		FUNC3("Failed to read 'ibm,plat-res-int-priorities' property\n");
		return false;
	}

	if (len % (2 * sizeof(u32)) != 0) {
		FUNC3("invalid 'ibm,plat-res-int-priorities' property\n");
		return false;
	}

	/* HW supports priorities in the range [0-7] and 0xFF is a
	 * wildcard priority used to mask. We scan the ranges reserved
	 * by the hypervisor to find the lowest priority we can use.
	 */
	found = 0xFF;
	for (prio = 0; prio < 8; prio++) {
		int reserved = 0;
		int i;

		for (i = 0; i < len / (2 * sizeof(u32)); i++) {
			int base  = FUNC0(reg[2 * i]);
			int range = FUNC0(reg[2 * i + 1]);

			if (prio >= base && prio < base + range)
				reserved++;
		}

		if (!reserved)
			found = prio;
	}

	if (found == 0xFF) {
		FUNC3("no valid priority found in 'ibm,plat-res-int-priorities'\n");
		return false;
	}

	*max_prio = found;
	return true;
}
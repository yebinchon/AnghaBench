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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  boot_cpuid ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int xics_default_distrib_server ; 
 int xics_default_server ; 

void FUNC7(void)
{
	int i, j;
	struct device_node *np;
	u32 ilen;
	const __be32 *ireg;
	u32 hcpuid;

	/* Find the server numbers for the boot cpu. */
	np = FUNC3(boot_cpuid, NULL);
	FUNC0(!np);

	hcpuid = FUNC2(boot_cpuid);
	xics_default_server = xics_default_distrib_server = hcpuid;

	FUNC6("xics: xics_default_server = 0x%x\n", xics_default_server);

	ireg = FUNC4(np, "ibm,ppc-interrupt-gserver#s", &ilen);
	if (!ireg) {
		FUNC5(np);
		return;
	}

	i = ilen / sizeof(int);

	/* Global interrupt distribution server is specified in the last
	 * entry of "ibm,ppc-interrupt-gserver#s" property. Get the last
	 * entry fom this property for current boot cpu id and use it as
	 * default distribution server
	 */
	for (j = 0; j < i; j += 2) {
		if (FUNC1(ireg[j]) == hcpuid) {
			xics_default_distrib_server = FUNC1(ireg[j+1]);
			break;
		}
	}
	FUNC6("xics: xics_default_distrib_server = 0x%x\n",
		 xics_default_distrib_server);
	FUNC5(np);
}
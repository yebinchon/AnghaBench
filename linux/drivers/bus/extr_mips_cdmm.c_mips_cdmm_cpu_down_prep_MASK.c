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
struct mips_cdmm_bus {int offline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mips_cdmm_bus*) ; 
 long FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_cdmm_bustype ; 
 int /*<<< orphan*/  mips_cdmm_cpu_down_helper ; 
 struct mips_cdmm_bus* FUNC2 () ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	struct mips_cdmm_bus *bus;
	long ret;

	/* Inform all the devices on the bus */
	ret = FUNC1(&mips_cdmm_bustype, NULL, &cpu,
			       mips_cdmm_cpu_down_helper);

	/*
	 * While bus is offline, each use of it should reconfigure it just in
	 * case it is first use when coming back online again.
	 */
	bus = FUNC2();
	if (!FUNC0(bus))
		bus->offline = true;

	return ret;
}
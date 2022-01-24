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
struct mips_cdmm_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mips_cdmm_bus* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  cpu_has_cdmm ; 
 struct mips_cdmm_bus* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct mips_cdmm_bus mips_cdmm_boot_bus ; 
 int /*<<< orphan*/  mips_cdmm_buses ; 
 struct mips_cdmm_bus** FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct mips_cdmm_bus *FUNC7(void)
{
	struct mips_cdmm_bus *bus, **bus_p;
	unsigned long flags;
	unsigned int cpu;

	if (!cpu_has_cdmm)
		return FUNC0(-ENODEV);

	cpu = FUNC5();
	/* Avoid early use of per-cpu primitives before initialised */
	if (cpu == 0)
		return &mips_cdmm_boot_bus;

	/* Get bus pointer */
	bus_p = FUNC4(&mips_cdmm_buses, cpu);
	FUNC3(flags);
	bus = *bus_p;
	/* Attempt allocation if NULL */
	if (FUNC6(!bus)) {
		bus = FUNC1(sizeof(*bus), GFP_ATOMIC);
		if (FUNC6(!bus))
			bus = FUNC0(-ENOMEM);
		else
			*bus_p = bus;
	}
	FUNC2(flags);
	return bus;
}
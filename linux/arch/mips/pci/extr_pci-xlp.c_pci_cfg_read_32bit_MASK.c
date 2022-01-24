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
typedef  int u32 ;
struct pci_bus {scalar_t__ number; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,unsigned int,int) ; 
 scalar_t__ pci_config_base ; 

__attribute__((used)) static inline u32 FUNC5(struct pci_bus *bus, unsigned int devfn,
	int where)
{
	u32 data;
	u32 *cfgaddr;

	where &= ~3;
	if (FUNC2()) {
		/* be very careful on SoC buses */
		if (bus->number == 0) {
			/* Scan only existing nodes - uboot bug? */
			if (FUNC1(devfn) != 0 ||
					   !FUNC3(FUNC0(devfn)))
				return 0xffffffff;
		} else if (bus->parent->number == 0) {	/* SoC bus */
			if (FUNC1(devfn) == 0)	/* b.0.0 hangs */
				return 0xffffffff;
			if (devfn == 44)		/* b.5.4 hangs */
				return 0xffffffff;
		}
	} else if (bus->number == 0 && FUNC1(devfn) == 1 && where == 0x954) {
		return 0xffffffff;
	}
	cfgaddr = (u32 *)(pci_config_base +
			FUNC4(bus->number, devfn, where));
	data = *cfgaddr;
	return data;
}
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
struct pata_icside_state {scalar_t__ ioc_base; } ;
struct expansion_card {int /*<<< orphan*/  irq; TYPE_1__* ops; } ;
struct ata_host {struct pata_icside_state* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irqdisable ) (struct expansion_card*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct ata_host* FUNC0 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct expansion_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct expansion_card *ec)
{
	struct ata_host *host = FUNC0(ec);
	unsigned long flags;

	/*
	 * Disable interrupts from this card.  We need to do
	 * this before disabling EASI since we may be accessing
	 * this register via that region.
	 */
	FUNC2(flags);
	ec->ops->irqdisable(ec, ec->irq);
	FUNC1(flags);

	/*
	 * Reset the ROM pointer so that we can read the ROM
	 * after a soft reboot.  This also disables access to
	 * the IDE taskfile via the EASI region.
	 */
	if (host) {
		struct pata_icside_state *state = host->private_data;
		if (state->ioc_base)
			FUNC4(0, state->ioc_base);
	}
}
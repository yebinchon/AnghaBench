#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct irq_domain {int dummy; } ;
struct irq_alloc_info {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ irqdomain_cfg; } ;

/* Variables and functions */
#define  IOAPIC_DOMAIN_DYNAMIC 130 
#define  IOAPIC_DOMAIN_LEGACY 129 
#define  IOAPIC_DOMAIN_STRICT 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (struct irq_domain*,int,int,int /*<<< orphan*/ ,struct irq_alloc_info*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_alloc_info*) ; 
 int /*<<< orphan*/  ioapic_initialized ; 
 TYPE_2__* ioapics ; 
 int FUNC3 (int) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain, int ioapic, u32 gsi,
				 struct irq_alloc_info *info)
{
	bool legacy = false;
	int irq = -1;
	int type = ioapics[ioapic].irqdomain_cfg.type;

	switch (type) {
	case IOAPIC_DOMAIN_LEGACY:
		/*
		 * Dynamically allocate IRQ number for non-ISA IRQs in the first
		 * 16 GSIs on some weird platforms.
		 */
		if (!ioapic_initialized || gsi >= FUNC4())
			irq = gsi;
		legacy = FUNC3(irq);
		break;
	case IOAPIC_DOMAIN_STRICT:
		irq = gsi;
		break;
	case IOAPIC_DOMAIN_DYNAMIC:
		break;
	default:
		FUNC0(1, "ioapic: unknown irqdomain type %d\n", type);
		return -1;
	}

	return FUNC1(domain, irq, 1,
				       FUNC2(info),
				       info, legacy, NULL);
}
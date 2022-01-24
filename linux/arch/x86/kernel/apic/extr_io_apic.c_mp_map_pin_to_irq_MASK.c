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
typedef  int /*<<< orphan*/  u32 ;
struct mp_chip_data {int /*<<< orphan*/  count; } ;
struct irq_domain {int dummy; } ;
struct irq_alloc_info {int dummy; } ;
struct TYPE_2__ {int srcbusirq; int /*<<< orphan*/  srcbus; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int ENOSYS ; 
 unsigned int IOAPIC_MAP_ALLOC ; 
 int FUNC0 (struct irq_domain*,int,int /*<<< orphan*/ ,struct irq_alloc_info*) ; 
 int FUNC1 (struct irq_domain*,int,int,int,struct irq_alloc_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_alloc_info*,struct irq_alloc_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ioapic_mutex ; 
 int FUNC3 (struct irq_domain*,int) ; 
 struct mp_chip_data* FUNC4 (int) ; 
 int /*<<< orphan*/  mp_bus_not_pci ; 
 int /*<<< orphan*/  FUNC5 (int,struct irq_alloc_info*) ; 
 struct irq_domain* FUNC6 (int) ; 
 TYPE_1__* mp_irqs ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(u32 gsi, int idx, int ioapic, int pin,
			     unsigned int flags, struct irq_alloc_info *info)
{
	int irq;
	bool legacy = false;
	struct irq_alloc_info tmp;
	struct mp_chip_data *data;
	struct irq_domain *domain = FUNC6(ioapic);

	if (!domain)
		return -ENOSYS;

	if (idx >= 0 && FUNC10(mp_irqs[idx].srcbus, mp_bus_not_pci)) {
		irq = mp_irqs[idx].srcbusirq;
		legacy = FUNC7(irq);
	}

	FUNC8(&ioapic_mutex);
	if (!(flags & IOAPIC_MAP_ALLOC)) {
		if (!legacy) {
			irq = FUNC3(domain, pin);
			if (irq == 0)
				irq = -ENOENT;
		}
	} else {
		FUNC2(&tmp, info, gsi, ioapic, pin);
		if (legacy)
			irq = FUNC1(domain, irq,
							ioapic, pin, &tmp);
		else if ((irq = FUNC3(domain, pin)) == 0)
			irq = FUNC0(domain, ioapic, gsi, &tmp);
		else if (!FUNC5(irq, &tmp))
			irq = -EBUSY;
		if (irq >= 0) {
			data = FUNC4(irq);
			data->count++;
		}
	}
	FUNC9(&ioapic_mutex);

	return irq;
}
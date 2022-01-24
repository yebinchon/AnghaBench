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
struct he_irq {int dummy; } ;
struct he_dev {int irq_phys; unsigned int* irq_tailoffset; TYPE_1__* pci_dev; int /*<<< orphan*/  irq; TYPE_2__* irq_base; TYPE_2__* irq_tail; TYPE_2__* irq_head; } ;
struct TYPE_4__ {int /*<<< orphan*/  isw; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CONFIG_IRQ_SIZE ; 
 int /*<<< orphan*/  CONFIG_IRQ_THRESH ; 
 int /*<<< orphan*/  DEV_LABEL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GRP_10_MAP ; 
 int /*<<< orphan*/  GRP_32_MAP ; 
 int /*<<< orphan*/  GRP_54_MAP ; 
 int /*<<< orphan*/  GRP_76_MAP ; 
 int /*<<< orphan*/  IRQ0_BASE ; 
 int /*<<< orphan*/  IRQ0_CNTL ; 
 int /*<<< orphan*/  IRQ0_DATA ; 
 int /*<<< orphan*/  IRQ0_HEAD ; 
 int /*<<< orphan*/  IRQ1_BASE ; 
 int /*<<< orphan*/  IRQ1_CNTL ; 
 int /*<<< orphan*/  IRQ1_DATA ; 
 int /*<<< orphan*/  IRQ1_HEAD ; 
 int /*<<< orphan*/  IRQ2_BASE ; 
 int /*<<< orphan*/  IRQ2_CNTL ; 
 int /*<<< orphan*/  IRQ2_DATA ; 
 int /*<<< orphan*/  IRQ2_HEAD ; 
 int /*<<< orphan*/  IRQ3_BASE ; 
 int /*<<< orphan*/  IRQ3_CNTL ; 
 int /*<<< orphan*/  IRQ3_DATA ; 
 int /*<<< orphan*/  IRQ3_HEAD ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int IRQ_INT_A ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int IRQ_TYPE_LINE ; 
 int /*<<< orphan*/  ITYPE_INVALID ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  he_irq_handler ; 
 int /*<<< orphan*/  FUNC3 (struct he_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct he_dev*) ; 

__attribute__((used)) static int FUNC6(struct he_dev *he_dev)
{
	int i;

	/* 2.9.3.5  tail offset for each interrupt queue is located after the
		    end of the interrupt queue */

	he_dev->irq_base = FUNC2(&he_dev->pci_dev->dev,
					      (CONFIG_IRQ_SIZE + 1) * sizeof(struct he_irq),
					      &he_dev->irq_phys, GFP_KERNEL);
	if (he_dev->irq_base == NULL) {
		FUNC4("failed to allocate irq\n");
		return -ENOMEM;
	}
	he_dev->irq_tailoffset = (unsigned *)
					&he_dev->irq_base[CONFIG_IRQ_SIZE];
	*he_dev->irq_tailoffset = 0;
	he_dev->irq_head = he_dev->irq_base;
	he_dev->irq_tail = he_dev->irq_base;

	for (i = 0; i < CONFIG_IRQ_SIZE; ++i)
		he_dev->irq_base[i].isw = ITYPE_INVALID;

	FUNC3(he_dev, he_dev->irq_phys, IRQ0_BASE);
	FUNC3(he_dev,
		FUNC0(CONFIG_IRQ_SIZE) | FUNC1(CONFIG_IRQ_THRESH),
								IRQ0_HEAD);
	FUNC3(he_dev, IRQ_INT_A | IRQ_TYPE_LINE, IRQ0_CNTL);
	FUNC3(he_dev, 0x0, IRQ0_DATA);

	FUNC3(he_dev, 0x0, IRQ1_BASE);
	FUNC3(he_dev, 0x0, IRQ1_HEAD);
	FUNC3(he_dev, 0x0, IRQ1_CNTL);
	FUNC3(he_dev, 0x0, IRQ1_DATA);

	FUNC3(he_dev, 0x0, IRQ2_BASE);
	FUNC3(he_dev, 0x0, IRQ2_HEAD);
	FUNC3(he_dev, 0x0, IRQ2_CNTL);
	FUNC3(he_dev, 0x0, IRQ2_DATA);

	FUNC3(he_dev, 0x0, IRQ3_BASE);
	FUNC3(he_dev, 0x0, IRQ3_HEAD);
	FUNC3(he_dev, 0x0, IRQ3_CNTL);
	FUNC3(he_dev, 0x0, IRQ3_DATA);

	/* 2.9.3.2 interrupt queue mapping registers */

	FUNC3(he_dev, 0x0, GRP_10_MAP);
	FUNC3(he_dev, 0x0, GRP_32_MAP);
	FUNC3(he_dev, 0x0, GRP_54_MAP);
	FUNC3(he_dev, 0x0, GRP_76_MAP);

	if (FUNC5(he_dev->pci_dev->irq,
			he_irq_handler, IRQF_SHARED, DEV_LABEL, he_dev)) {
		FUNC4("irq %d already in use\n", he_dev->pci_dev->irq);
		return -EINVAL;
	}   

	he_dev->irq = he_dev->pci_dev->irq;

	return 0;
}
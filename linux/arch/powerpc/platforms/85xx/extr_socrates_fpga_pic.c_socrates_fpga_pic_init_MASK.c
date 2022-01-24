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
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SOCRATES_FPGA_IRQ_MASK ; 
 int /*<<< orphan*/  SOCRATES_FPGA_NUM_IRQS ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * socrates_fpga_irqs ; 
 int /*<<< orphan*/  socrates_fpga_pic_cascade ; 
 int /*<<< orphan*/  socrates_fpga_pic_host_ops ; 
 int /*<<< orphan*/  socrates_fpga_pic_iobase ; 
 int /*<<< orphan*/ * socrates_fpga_pic_irq_host ; 
 int /*<<< orphan*/  socrates_fpga_pic_lock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void FUNC11(struct device_node *pic)
{
	unsigned long flags;
	int i;

	/* Setup an irq_domain structure */
	socrates_fpga_pic_irq_host = FUNC1(pic,
		    SOCRATES_FPGA_NUM_IRQS, &socrates_fpga_pic_host_ops, NULL);
	if (socrates_fpga_pic_irq_host == NULL) {
		FUNC5("FPGA PIC: Unable to allocate host\n");
		return;
	}

	for (i = 0; i < 3; i++) {
		socrates_fpga_irqs[i] = FUNC2(pic, i);
		if (!socrates_fpga_irqs[i]) {
			FUNC7("FPGA PIC: can't get irq%d\n", i);
			continue;
		}
		FUNC3(socrates_fpga_irqs[i],
					socrates_fpga_pic_cascade);
	}

	socrates_fpga_pic_iobase = FUNC4(pic, 0);

	FUNC8(&socrates_fpga_pic_lock, flags);
	FUNC10(FUNC0(0),
			SOCRATES_FPGA_IRQ_MASK << 16);
	FUNC10(FUNC0(1),
			SOCRATES_FPGA_IRQ_MASK << 16);
	FUNC10(FUNC0(2),
			SOCRATES_FPGA_IRQ_MASK << 16);
	FUNC9(&socrates_fpga_pic_lock, flags);

	FUNC6("FPGA PIC: Setting up Socrates FPGA PIC\n");
}
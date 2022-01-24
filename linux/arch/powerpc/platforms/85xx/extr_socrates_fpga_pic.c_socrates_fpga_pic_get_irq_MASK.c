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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SOCRATES_FPGA_NUM_IRQS ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int* socrates_fpga_irqs ; 
 int /*<<< orphan*/  socrates_fpga_pic_irq_host ; 
 int /*<<< orphan*/  socrates_fpga_pic_lock ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC5(unsigned int irq)
{
	uint32_t cause;
	unsigned long flags;
	int i;

	/* Check irq line routed to the MPIC */
	for (i = 0; i < 3; i++) {
		if (irq == socrates_fpga_irqs[i])
			break;
	}
	if (i == 3)
		return 0;

	FUNC2(&socrates_fpga_pic_lock, flags);
	cause = FUNC4(FUNC0(i));
	FUNC3(&socrates_fpga_pic_lock, flags);
	for (i = SOCRATES_FPGA_NUM_IRQS - 1; i >= 0; i--) {
		if (cause >> (i + 16))
			break;
	}
	return FUNC1(socrates_fpga_pic_irq_host,
			(irq_hw_number_t)i);
}
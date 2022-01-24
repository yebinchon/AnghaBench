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
struct irq_data {int irq; } ;

/* Variables and functions */
 int AU1000_INTC1_INT_BASE ; 
 int /*<<< orphan*/  AU1000_SYS_WAKEMSK ; 
 int EINVAL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, unsigned int on)
{
	int bit = d->irq - AU1000_INTC1_INT_BASE;
	unsigned long wakemsk, flags;

	/* only GPIO 0-7 can act as wakeup source.  Fortunately these
	 * are wired up identically on all supported variants.
	 */
	if ((bit < 0) || (bit > 7))
		return -EINVAL;

	FUNC3(flags);
	wakemsk = FUNC0(AU1000_SYS_WAKEMSK);
	if (on)
		wakemsk |= 1 << bit;
	else
		wakemsk &= ~(1 << bit);
	FUNC1(wakemsk, AU1000_SYS_WAKEMSK);
	FUNC2(flags);

	return 0;
}
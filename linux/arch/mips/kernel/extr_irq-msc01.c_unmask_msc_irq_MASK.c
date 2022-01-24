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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSC01_IC_ENAH ; 
 int /*<<< orphan*/  MSC01_IC_ENAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int irq_base ; 

__attribute__((used)) static inline void FUNC1(struct irq_data *d)
{
	unsigned int irq = d->irq;

	if (irq < (irq_base + 32))
		FUNC0(MSC01_IC_ENAL, 1<<(irq - irq_base));
	else
		FUNC0(MSC01_IC_ENAH, 1<<(irq - irq_base - 32));
}
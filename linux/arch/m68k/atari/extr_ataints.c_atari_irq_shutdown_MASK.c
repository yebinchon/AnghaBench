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
 unsigned int IRQ_AUTO_4 ; 
 size_t VEC_INT4 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  falcon_hblhandler ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/ * vectors ; 

__attribute__((used)) static void FUNC3(struct irq_data *data)
{
	unsigned int irq = data->irq;

	FUNC0(irq);
	FUNC1(irq);
	FUNC2(data);

	if (irq == IRQ_AUTO_4)
	    vectors[VEC_INT4] = falcon_hblhandler;
}
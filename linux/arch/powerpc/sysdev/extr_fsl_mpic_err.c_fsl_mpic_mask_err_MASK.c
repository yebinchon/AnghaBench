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
typedef  int u32 ;
struct mpic {unsigned int* err_int_vecs; int /*<<< orphan*/  err_regs; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPIC_ERR_INT_EIMR ; 
 struct mpic* FUNC0 (struct irq_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	u32 eimr;
	struct mpic *mpic = FUNC0(d);
	unsigned int src = FUNC3(d->irq) - mpic->err_int_vecs[0];

	eimr = FUNC1(mpic->err_regs, MPIC_ERR_INT_EIMR);
	eimr |= (1 << (31 - src));
	FUNC2(mpic->err_regs, eimr);
}
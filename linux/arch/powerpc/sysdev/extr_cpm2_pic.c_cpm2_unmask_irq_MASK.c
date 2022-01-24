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
struct irq_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_simrh; } ;

/* Variables and functions */
 TYPE_1__* cpm2_intctl ; 
 int* irq_to_siubit ; 
 int* irq_to_siureg ; 
 unsigned int FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int* ppc_cached_irq_mask ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	int	bit, word;
	unsigned int irq_nr = FUNC0(d);

	bit = irq_to_siubit[irq_nr];
	word = irq_to_siureg[irq_nr];

	ppc_cached_irq_mask[word] |= 1 << bit;
	FUNC1(&cpm2_intctl->ic_simrh + word, ppc_cached_irq_mask[word]);
}
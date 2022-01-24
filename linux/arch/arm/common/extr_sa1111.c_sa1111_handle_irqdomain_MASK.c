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
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,int) ; 
 struct irq_desc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct irq_domain *irqdomain, int irq)
{
	struct irq_desc *d = FUNC2(FUNC1(irqdomain, irq));

	if (d)
		FUNC0(d);
}
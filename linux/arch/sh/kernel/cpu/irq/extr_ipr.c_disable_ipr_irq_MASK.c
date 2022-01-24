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
struct ipr_data {size_t ipr_idx; int shift; } ;
struct TYPE_2__ {unsigned long* ipr_offsets; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 
 TYPE_1__* FUNC2 (struct irq_data*) ; 
 struct ipr_data* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct ipr_data *p = FUNC3(data);
	unsigned long addr = FUNC2(data)->ipr_offsets[p->ipr_idx];
	/* Set the priority in IPR to 0 */
	FUNC1(FUNC0(addr) & (0xffff ^ (0xf << p->shift)), addr);
	(void)FUNC0(addr);	/* Read back to flush write posting */
}
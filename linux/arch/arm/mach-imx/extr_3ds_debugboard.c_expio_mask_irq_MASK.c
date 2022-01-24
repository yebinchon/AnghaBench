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
typedef  int u16 ;
struct irq_data {int hwirq; } ;

/* Variables and functions */
 scalar_t__ INTR_MASK_REG ; 
 scalar_t__ brd_io ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	u16 reg;
	u32 expio = d->hwirq;

	reg = FUNC0(brd_io + INTR_MASK_REG);
	reg |= (1 << expio);
	FUNC1(reg, brd_io + INTR_MASK_REG);
}
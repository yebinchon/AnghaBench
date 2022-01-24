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
typedef  unsigned long long u64 ;
struct irq_data {int irq; } ;

/* Variables and functions */
 int OCTEON_IRQ_MSI_BIT0 ; 
 unsigned long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/ * mis_ena_reg ; 
 int /*<<< orphan*/  octeon_irq_msi_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	u64 en;
	unsigned long flags;
	int msi_number = data->irq - OCTEON_IRQ_MSI_BIT0;
	int irq_index = msi_number >> 6;
	int irq_bit = msi_number & 0x3f;

	FUNC2(&octeon_irq_msi_lock, flags);
	en = FUNC0(mis_ena_reg[irq_index]);
	en |= 1ull << irq_bit;
	FUNC1(mis_ena_reg[irq_index], en);
	FUNC0(mis_ena_reg[irq_index]);
	FUNC3(&octeon_irq_msi_lock, flags);
}
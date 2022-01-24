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
struct xlp_msi_data {unsigned int msi_enabled_mask; int /*<<< orphan*/  msi_lock; int /*<<< orphan*/  lnkbase; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_9XX_MSI_EN ; 
 int /*<<< orphan*/  PCIE_MSI_EN ; 
 scalar_t__ FUNC0 () ; 
 struct xlp_msi_data* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct xlp_msi_data *md = FUNC1(d);
	unsigned long flags;
	int vec;

	vec = FUNC2(d->irq);
	FUNC4(&md->msi_lock, flags);
	md->msi_enabled_mask &= ~(1u << vec);
	if (FUNC0())
		FUNC3(md->lnkbase, PCIE_9XX_MSI_EN,
				md->msi_enabled_mask);
	else
		FUNC3(md->lnkbase, PCIE_MSI_EN, md->msi_enabled_mask);
	FUNC5(&md->msi_lock, flags);
}
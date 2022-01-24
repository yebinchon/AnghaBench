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
struct xlp_msi_data {int /*<<< orphan*/  lnkbase; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIE_9XX_MSI_STATUS ; 
 int /*<<< orphan*/  PCIE_MSI_STATUS ; 
 scalar_t__ FUNC0 () ; 
 struct xlp_msi_data* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct xlp_msi_data *md = FUNC1(d);
	int link, vec;

	link = FUNC2(d->irq);
	vec = FUNC3(d->irq);
	FUNC5(d);

	/* Ack MSI on bridge */
	if (FUNC0())
		FUNC4(md->lnkbase, PCIE_9XX_MSI_STATUS, 1u << vec);
	else
		FUNC4(md->lnkbase, PCIE_MSI_STATUS, 1u << vec);

}
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
typedef  unsigned int uint32_t ;
struct xlp_msi_data {TYPE_1__* node; int /*<<< orphan*/  lnkbase; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  picbase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int PCIE_MSIX_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int XLP_MSIXVEC_PER_LINK ; 
 scalar_t__ FUNC2 () ; 
 struct xlp_msi_data* FUNC3 (struct irq_data*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_data*) ; 

__attribute__((used)) static void FUNC9(struct irq_data *d)
{
	struct xlp_msi_data *md;
	int link, msixvec;
	uint32_t status_reg, bit;

	msixvec = FUNC5(d->irq);
	link = FUNC4(msixvec);
	FUNC8(d);
	md = FUNC3(d);

	/* Ack MSI on bridge */
	if (FUNC2()) {
		status_reg = FUNC0(link);
		bit = msixvec % XLP_MSIXVEC_PER_LINK;
	} else {
		status_reg = PCIE_MSIX_STATUS;
		bit = msixvec;
	}
	FUNC7(md->lnkbase, status_reg, 1u << bit);

	if (!FUNC2())
		FUNC6(md->node->picbase,
				FUNC1(msixvec));
}
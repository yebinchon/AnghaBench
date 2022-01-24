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
struct fsl_msi {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  irqhost; } ;

/* Variables and functions */
 int NR_MSI_IRQS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct fsl_msi *msi_data)
{
	int rc, hwirq;

	rc = FUNC1(&msi_data->bitmap, NR_MSI_IRQS_MAX,
			      FUNC0(msi_data->irqhost));
	if (rc)
		return rc;

	/*
	 * Reserve all the hwirqs
	 * The available hwirqs will be released in fsl_msi_setup_hwirq()
	 */
	for (hwirq = 0; hwirq < NR_MSI_IRQS_MAX; hwirq++)
		FUNC2(&msi_data->bitmap, hwirq);

	return 0;
}
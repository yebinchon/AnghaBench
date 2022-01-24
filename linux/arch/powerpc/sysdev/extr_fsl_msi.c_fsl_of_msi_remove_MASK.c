#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ bitmap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * prev; } ;
struct fsl_msi {int virq; int feature; int /*<<< orphan*/  msi_regs; TYPE_1__ bitmap; struct fsl_msi** cascade_array; TYPE_2__ list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FSL_PIC_IP_MASK ; 
 int FSL_PIC_IP_VMPIC ; 
 int NR_MSI_REG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,struct fsl_msi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_msi*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct fsl_msi* FUNC7 (struct platform_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *ofdev)
{
	struct fsl_msi *msi = FUNC7(ofdev);
	int virq, i;

	if (msi->list.prev != NULL)
		FUNC5(&msi->list);
	for (i = 0; i < NR_MSI_REG_MAX; i++) {
		if (msi->cascade_array[i]) {
			virq = msi->cascade_array[i]->virq;

			FUNC0(!virq);

			FUNC1(virq, msi->cascade_array[i]);
			FUNC4(msi->cascade_array[i]);
			FUNC3(virq);
		}
	}
	if (msi->bitmap.bitmap)
		FUNC6(&msi->bitmap);
	if ((msi->feature & FSL_PIC_IP_MASK) != FSL_PIC_IP_VMPIC)
		FUNC2(msi->msi_regs);
	FUNC4(msi);

	return 0;
}
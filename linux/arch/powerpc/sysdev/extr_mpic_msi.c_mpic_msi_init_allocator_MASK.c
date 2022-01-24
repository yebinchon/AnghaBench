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
struct mpic {int flags; int /*<<< orphan*/  msi_bitmap; int /*<<< orphan*/  irqhost; int /*<<< orphan*/  num_sources; } ;

/* Variables and functions */
 int MPIC_U3_HT_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mpic*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mpic *mpic)
{
	int rc;

	rc = FUNC2(&mpic->msi_bitmap, mpic->num_sources,
			      FUNC0(mpic->irqhost));
	if (rc)
		return rc;

	rc = FUNC4(&mpic->msi_bitmap);
	if (rc > 0) {
		if (mpic->flags & MPIC_U3_HT_IRQS)
			rc = FUNC1(mpic);

		if (rc) {
			FUNC3(&mpic->msi_bitmap);
			return rc;
		}
	}

	return 0;
}
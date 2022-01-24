#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MBI_MCRX_OFFSET ; 
 int /*<<< orphan*/  MBI_MCR_OFFSET ; 
 int /*<<< orphan*/  MBI_MDR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* mbi_pdev ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(u32 mcrx, u32 mcr, u32 *mdr)
{
	int result;

	if (!mbi_pdev)
		return -ENODEV;

	if (mcrx) {
		result = FUNC2(mbi_pdev, MBI_MCRX_OFFSET,
						mcrx);
		if (result < 0)
			goto fail_read;
	}

	result = FUNC2(mbi_pdev, MBI_MCR_OFFSET, mcr);
	if (result < 0)
		goto fail_read;

	result = FUNC1(mbi_pdev, MBI_MDR_OFFSET, mdr);
	if (result < 0)
		goto fail_read;

	return 0;

fail_read:
	FUNC0(&mbi_pdev->dev, "PCI config access failed with %d\n", result);
	return result;
}
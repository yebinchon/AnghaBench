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
struct TYPE_2__ {unsigned int msi_index; } ;
struct msi_desc {int /*<<< orphan*/  list; TYPE_1__ fsl_mc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msi_desc* FUNC1 (struct device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int irq_count)

{
	unsigned int i;
	int error;
	struct msi_desc *msi_desc;

	for (i = 0; i < irq_count; i++) {
		msi_desc = FUNC1(dev, 1, NULL);
		if (!msi_desc) {
			FUNC2(dev, "Failed to allocate msi entry\n");
			error = -ENOMEM;
			goto cleanup_msi_descs;
		}

		msi_desc->fsl_mc.msi_index = i;
		FUNC0(&msi_desc->list);
		FUNC5(&msi_desc->list, FUNC3(dev));
	}

	return 0;

cleanup_msi_descs:
	FUNC4(dev);
	return error;
}
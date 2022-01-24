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
struct ppc4xx_msi {int /*<<< orphan*/  bitmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msi_irqs ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev,
		struct ppc4xx_msi *msi_data)
{
	int err;

	err = FUNC0(&msi_data->bitmap, msi_irqs,
			      dev->dev.of_node);
	if (err)
		return err;

	err = FUNC2(&msi_data->bitmap);
	if (err < 0) {
		FUNC1(&msi_data->bitmap);
		return err;
	}

	return 0;
}
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
struct ssp_device {TYPE_1__* pdev; int /*<<< orphan*/ * label; scalar_t__ use_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssp_lock ; 

void FUNC3(struct ssp_device *ssp)
{
	FUNC1(&ssp_lock);
	if (ssp->use_count) {
		ssp->use_count--;
		ssp->label = NULL;
	} else
		FUNC0(&ssp->pdev->dev, "device already free\n");
	FUNC2(&ssp_lock);
}
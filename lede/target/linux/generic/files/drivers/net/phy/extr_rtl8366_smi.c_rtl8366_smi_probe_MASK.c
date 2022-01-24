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
struct rtl8366_smi {int dummy; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 struct rtl8366_smi* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*) ; 
 struct rtl8366_smi* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct platform_device*,struct rtl8366_smi*) ; 
 int FUNC4 (struct platform_device*,struct rtl8366_smi*) ; 

struct rtl8366_smi *FUNC5(struct platform_device *pdev)
{
	struct rtl8366_smi *smi;
	int err;

	smi = FUNC2(&pdev->dev);
	if (!smi)
		return NULL;

	if (pdev->dev.of_node)
		err = FUNC3(pdev, smi);
	else
		err = FUNC4(pdev, smi);

	if (err)
		goto free_smi;

	return smi;

free_smi:
	FUNC1(smi);
	return FUNC0(err);
}
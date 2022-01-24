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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ipmi_smi_powernv {int /*<<< orphan*/  irq; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 struct ipmi_smi_powernv* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ipmi_smi_powernv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ipmi_smi_powernv *smi = FUNC0(&pdev->dev);

	FUNC2(smi->intf);
	FUNC1(smi->irq, smi);
	FUNC3(smi->irq);

	return 0;
}
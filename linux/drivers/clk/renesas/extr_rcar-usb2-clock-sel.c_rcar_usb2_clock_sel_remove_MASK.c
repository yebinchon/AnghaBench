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
struct usb2_clock_sel_priv {int /*<<< orphan*/  hw; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct usb2_clock_sel_priv* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct usb2_clock_sel_priv *priv = FUNC2(pdev);

	FUNC1(dev->of_node);
	FUNC0(&priv->hw);
	FUNC4(dev);
	FUNC3(dev);

	return 0;
}
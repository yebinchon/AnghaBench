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
struct rt305x_esw {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT305X_ESW_REG_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct rt305x_esw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rt305x_esw* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rt305x_esw *esw = FUNC1(pdev);

	if (esw) {
		FUNC0(esw, ~0, RT305X_ESW_REG_IMR);
		FUNC2(pdev, NULL);
	}

	return 0;
}
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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TOSA_GPIO_TC6393XB_L3V_ON ; 
 int /*<<< orphan*/  TOSA_GPIO_TC6393XB_REST_IN ; 
 int /*<<< orphan*/  TOSA_GPIO_TC6393XB_SUSPEND ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *dev)
{
	int rc;

	rc = FUNC2(TOSA_GPIO_TC6393XB_REST_IN, "tc6393xb #pclr");
	if (rc)
		goto err_req_pclr;
	rc = FUNC2(TOSA_GPIO_TC6393XB_SUSPEND, "tc6393xb #suspend");
	if (rc)
		goto err_req_suspend;
	rc = FUNC2(TOSA_GPIO_TC6393XB_L3V_ON, "tc6393xb l3v");
	if (rc)
		goto err_req_l3v;
	rc = FUNC0(TOSA_GPIO_TC6393XB_L3V_ON, 0);
	if (rc)
		goto err_dir_l3v;
	rc = FUNC0(TOSA_GPIO_TC6393XB_SUSPEND, 0);
	if (rc)
		goto err_dir_suspend;
	rc = FUNC0(TOSA_GPIO_TC6393XB_REST_IN, 0);
	if (rc)
		goto err_dir_pclr;

	FUNC4(1);

	FUNC3(TOSA_GPIO_TC6393XB_SUSPEND, 1);

	FUNC4(10);

	FUNC3(TOSA_GPIO_TC6393XB_REST_IN, 1);
	FUNC3(TOSA_GPIO_TC6393XB_L3V_ON, 1);

	return 0;
err_dir_pclr:
err_dir_suspend:
err_dir_l3v:
	FUNC1(TOSA_GPIO_TC6393XB_L3V_ON);
err_req_l3v:
	FUNC1(TOSA_GPIO_TC6393XB_SUSPEND);
err_req_suspend:
	FUNC1(TOSA_GPIO_TC6393XB_REST_IN);
err_req_pclr:
	return rc;
}
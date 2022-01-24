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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ftpm_tee_private {int /*<<< orphan*/  ctx; int /*<<< orphan*/  session; int /*<<< orphan*/  shm; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct ftpm_tee_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct ftpm_tee_private *pvt_data = FUNC0(&pdev->dev);

	/* Release the chip */
	FUNC5(pvt_data->chip);

	/* frees chip */
	FUNC1(&pvt_data->chip->dev);

	/* Free the shared memory pool */
	FUNC4(pvt_data->shm);

	/* close the existing session with fTPM TA*/
	FUNC3(pvt_data->ctx, pvt_data->session);

	/* close the context with TEE driver */
	FUNC2(pvt_data->ctx);

	/* memory allocated with devm_kzalloc() is freed automatically */

	return 0;
}
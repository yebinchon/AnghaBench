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
struct s3c_sdhci_platdata {scalar_t__ cd_type; } ;
struct TYPE_2__ {struct s3c_sdhci_platdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_UP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ S3C_SDHCI_CD_INTERNAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct platform_device *dev, int width)
{
	struct s3c_sdhci_platdata *pdata = dev->dev.platform_data;

	/* Set all the necessary GPG pins to special-function 2 */
	FUNC3(FUNC0(0), 2 + width, FUNC1(2));

	if (pdata->cd_type == S3C_SDHCI_CD_INTERNAL) {
		FUNC4(FUNC0(6), S3C_GPIO_PULL_UP);
		FUNC2(FUNC0(6), FUNC1(2));
	}
}
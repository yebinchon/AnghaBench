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
struct ep93xx_pata_data {int /*<<< orphan*/  ide_base; } ;
struct ata_host {struct ep93xx_pata_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ep93xx_pata_data*) ; 
 struct ata_host* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct ata_host *host = FUNC4(pdev);
	struct ep93xx_pata_data *drv_data = host->private_data;

	FUNC0(host);
	FUNC3(drv_data);
	FUNC2(drv_data->ide_base);
	FUNC1(pdev);
	return 0;
}
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
struct platform_device {int dummy; } ;
struct ata_host {TYPE_1__** ports; } ;
struct arasan_cf_dev {int dummy; } ;
struct TYPE_2__ {struct arasan_cf_dev* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ata_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct arasan_cf_dev*) ; 
 struct ata_host* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct ata_host *host = FUNC2(pdev);
	struct arasan_cf_dev *acdev = host->ports[0]->private_data;

	FUNC0(host);
	FUNC1(acdev);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct bmc_device {int /*<<< orphan*/  usecount; int /*<<< orphan*/  dyn_mutex; TYPE_3__ pdev; } ;
struct ipmi_smi {int bmc_registered; char* my_dev_name; struct bmc_device tmp_bmc; struct bmc_device* bmc; int /*<<< orphan*/  bmc_link; TYPE_1__* si_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  cleanup_bmc_device ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(struct ipmi_smi *intf)
{
	struct bmc_device *bmc = intf->bmc;

	if (!intf->bmc_registered)
		return;

	FUNC5(&intf->si_dev->kobj, "bmc");
	FUNC5(&bmc->pdev.dev.kobj, intf->my_dev_name);
	FUNC0(intf->my_dev_name);
	intf->my_dev_name = NULL;

	FUNC3(&bmc->dyn_mutex);
	FUNC2(&intf->bmc_link);
	FUNC4(&bmc->dyn_mutex);
	intf->bmc = &intf->tmp_bmc;
	FUNC1(&bmc->usecount, cleanup_bmc_device);
	intf->bmc_registered = false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hwicap_drvdata {int /*<<< orphan*/  dev; TYPE_1__* config_regs; TYPE_2__* config; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* reset ) (struct hwicap_drvdata*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  IDCODE; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct hwicap_drvdata*) ; 
 int FUNC2 (struct hwicap_drvdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hwicap_drvdata*) ; 

__attribute__((used)) static int FUNC4(struct hwicap_drvdata *drvdata)
{
	int status;
	u32 idcode;

	FUNC0(drvdata->dev, "initializing\n");

	/* Abort any current transaction, to make sure we have the
	 * ICAP in a good state.
	 */
	FUNC0(drvdata->dev, "Reset...\n");
	drvdata->config->reset(drvdata);

	FUNC0(drvdata->dev, "Desync...\n");
	status = FUNC1(drvdata);
	if (status)
		return status;

	/* Attempt to read the IDCODE from ICAP.  This
	 * may not be returned correctly, due to the design of the
	 * hardware.
	 */
	FUNC0(drvdata->dev, "Reading IDCODE...\n");
	status = FUNC2(
			drvdata, drvdata->config_regs->IDCODE, &idcode);
	FUNC0(drvdata->dev, "IDCODE = %x\n", idcode);
	if (status)
		return status;

	FUNC0(drvdata->dev, "Desync...\n");
	status = FUNC1(drvdata);
	if (status)
		return status;

	return 0;
}
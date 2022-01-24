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
struct rtas_error_log {int dummy; } ;
struct pseries_hp_errorlog {scalar_t__ resource; } ;
struct pseries_errorlog {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_RTAS_LOG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PSERIES_ELOG_SECT_ID_HOTPLUG ; 
 scalar_t__ PSERIES_HP_ELOG_RESOURCE_CPU ; 
 scalar_t__ PSERIES_HP_ELOG_RESOURCE_MEM ; 
 scalar_t__ PSERIES_HP_ELOG_RESOURCE_PMEM ; 
 int /*<<< orphan*/  RTAS_HOTPLUG_EVENTS ; 
 int /*<<< orphan*/  RTAS_VECTOR_EXTERNAL_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 struct pseries_errorlog* FUNC1 (struct rtas_error_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pseries_hp_errorlog*) ; 
 int /*<<< orphan*/  ras_check_exception_token ; 
 scalar_t__ ras_log_buf ; 
 int /*<<< orphan*/  ras_log_buf_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct pseries_errorlog *pseries_log;
	struct pseries_hp_errorlog *hp_elog;

	FUNC6(&ras_log_buf_lock);

	FUNC4(ras_check_exception_token, 6, 1, NULL,
		  RTAS_VECTOR_EXTERNAL_INTERRUPT, FUNC8(irq),
		  RTAS_HOTPLUG_EVENTS, 0, FUNC0(&ras_log_buf),
		  FUNC5());

	pseries_log = FUNC1((struct rtas_error_log *)ras_log_buf,
					   PSERIES_ELOG_SECT_ID_HOTPLUG);
	hp_elog = (struct pseries_hp_errorlog *)pseries_log->data;

	/*
	 * Since PCI hotplug is not currently supported on pseries, put PCI
	 * hotplug events on the ras_log_buf to be handled by rtas_errd.
	 */
	if (hp_elog->resource == PSERIES_HP_ELOG_RESOURCE_MEM ||
	    hp_elog->resource == PSERIES_HP_ELOG_RESOURCE_CPU ||
	    hp_elog->resource == PSERIES_HP_ELOG_RESOURCE_PMEM)
		FUNC3(hp_elog);
	else
		FUNC2(ras_log_buf, ERR_TYPE_RTAS_LOG, 0);

	FUNC7(&ras_log_buf_lock);
	return IRQ_HANDLED;
}
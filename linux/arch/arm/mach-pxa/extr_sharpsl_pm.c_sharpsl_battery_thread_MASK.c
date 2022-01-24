#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct TYPE_7__ {scalar_t__ ac_status; int mainbat_percent; int mainbat_voltage; int mainbat_status; } ;
struct TYPE_8__ {scalar_t__ charge_mode; int flags; int /*<<< orphan*/  dev; TYPE_3__ battstat; TYPE_2__* machinfo; scalar_t__ charge_start_time; } ;
struct TYPE_6__ {int (* read_devdata ) (int /*<<< orphan*/ ) ;TYPE_1__* bat_levels_noac; int /*<<< orphan*/  batfull_irq; } ;
struct TYPE_5__ {int voltage; } ;

/* Variables and functions */
 scalar_t__ APM_AC_OFFLINE ; 
 scalar_t__ APM_AC_ONLINE ; 
 int APM_BATTERY_STATUS_CRITICAL ; 
 int APM_BATTERY_STATUS_HIGH ; 
 int /*<<< orphan*/  APM_CRITICAL_SUSPEND ; 
 scalar_t__ CHRG_ON ; 
 int SHARPSL_APM_QUEUED ; 
 int /*<<< orphan*/  SHARPSL_BATCHK_TIME ; 
 int /*<<< orphan*/  SHARPSL_BATT_VOLT ; 
 scalar_t__ SHARPSL_CHARGE_ON_TIME_INTERVAL ; 
 int /*<<< orphan*/  SHARPSL_STATUS_ACIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  sharpsl_bat ; 
 TYPE_4__ sharpsl_pm ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  toggle_charger ; 

__attribute__((used)) static void FUNC11(struct work_struct *private_)
{
	int voltage, percent, apm_status, i;

	if (!sharpsl_pm.machinfo)
		return;

	sharpsl_pm.battstat.ac_status = (sharpsl_pm.machinfo->read_devdata(SHARPSL_STATUS_ACIN) ? APM_AC_ONLINE : APM_AC_OFFLINE);

	/* Corgi cannot confirm when battery fully charged so periodically kick! */
	if (!sharpsl_pm.machinfo->batfull_irq && (sharpsl_pm.charge_mode == CHRG_ON)
			&& FUNC10(jiffies, sharpsl_pm.charge_start_time +  SHARPSL_CHARGE_ON_TIME_INTERVAL))
		FUNC6(&toggle_charger, 0);

	for (i = 0; i < 5; i++) {
		voltage = sharpsl_pm.machinfo->read_devdata(SHARPSL_BATT_VOLT);
		if (voltage > 0)
			break;
	}
	if (voltage <= 0) {
		voltage = sharpsl_pm.machinfo->bat_levels_noac[0].voltage;
		FUNC3(sharpsl_pm.dev, "Warning: Cannot read main battery!\n");
	}

	voltage = FUNC7(voltage);
	apm_status = FUNC4(voltage);
	percent = FUNC5(voltage);

	/* At low battery voltages, the voltage has a tendency to start
	   creeping back up so we try to avoid this here */
	if ((sharpsl_pm.battstat.ac_status == APM_AC_ONLINE)
	    || (apm_status == APM_BATTERY_STATUS_HIGH)
	    || percent <= sharpsl_pm.battstat.mainbat_percent) {
		sharpsl_pm.battstat.mainbat_voltage = voltage;
		sharpsl_pm.battstat.mainbat_status = apm_status;
		sharpsl_pm.battstat.mainbat_percent = percent;
	}

	FUNC1(sharpsl_pm.dev, "Battery: voltage: %d, status: %d, percentage: %d, time: %ld\n", voltage,
			sharpsl_pm.battstat.mainbat_status, sharpsl_pm.battstat.mainbat_percent, jiffies);

	/* Suspend if critical battery level */
	if ((sharpsl_pm.battstat.ac_status != APM_AC_ONLINE)
	     && (sharpsl_pm.battstat.mainbat_status == APM_BATTERY_STATUS_CRITICAL)
	     && !(sharpsl_pm.flags & SHARPSL_APM_QUEUED)) {
		sharpsl_pm.flags |= SHARPSL_APM_QUEUED;
		FUNC2(sharpsl_pm.dev, "Fatal Off\n");
		FUNC0(APM_CRITICAL_SUSPEND);
	}

	FUNC6(&sharpsl_bat, SHARPSL_BATCHK_TIME);
}
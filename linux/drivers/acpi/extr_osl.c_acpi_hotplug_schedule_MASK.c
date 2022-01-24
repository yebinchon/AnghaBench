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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_hp_work {int /*<<< orphan*/  work; int /*<<< orphan*/  src; struct acpi_device* adev; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_hotplug_work_fn ; 
 int /*<<< orphan*/  kacpi_hotplug_wq ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_hp_work*) ; 
 struct acpi_hp_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status FUNC5(struct acpi_device *adev, u32 src)
{
	struct acpi_hp_work *hpw;

	FUNC0((ACPI_DB_EXEC,
		  "Scheduling hotplug event (%p, %u) for deferred execution.\n",
		  adev, src));

	hpw = FUNC3(sizeof(*hpw), GFP_KERNEL);
	if (!hpw)
		return AE_NO_MEMORY;

	FUNC1(&hpw->work, acpi_hotplug_work_fn);
	hpw->adev = adev;
	hpw->src = src;
	/*
	 * We can't run hotplug code in kacpid_wq/kacpid_notify_wq etc., because
	 * the hotplug code may call driver .remove() functions, which may
	 * invoke flush_scheduled_work()/acpi_os_wait_events_complete() to flush
	 * these workqueues.
	 */
	if (!FUNC4(kacpi_hotplug_wq, &hpw->work)) {
		FUNC2(hpw);
		return AE_ERROR;
	}
	return AE_OK;
}
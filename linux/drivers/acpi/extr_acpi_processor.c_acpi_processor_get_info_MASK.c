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
struct TYPE_7__ {unsigned long long proc_id; int pblk_length; scalar_t__ pblk_address; } ;
union acpi_object {TYPE_3__ processor; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  duty_width; int /*<<< orphan*/  duty_offset; scalar_t__ address; } ;
struct TYPE_5__ {int bm_control; } ;
struct acpi_processor {unsigned long long acpi_id; int id; int /*<<< orphan*/  handle; scalar_t__ pblk; TYPE_2__ throttling; int /*<<< orphan*/  phys_id; TYPE_1__ flags; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;
struct acpi_buffer {int member_0; union acpi_object* member_1; } ;
typedef  int acpi_status ;
struct TYPE_8__ {int /*<<< orphan*/  duty_width; int /*<<< orphan*/  duty_offset; scalar_t__ pm2_control_length; scalar_t__ pm2_control_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ACPI_PROCESSOR_OBJECT_HID ; 
 scalar_t__ FUNC2 (int) ; 
 int AE_OK ; 
 int ENODEV ; 
 char* METHOD_NAME__UID ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_device*) ; 
 struct acpi_processor* FUNC5 (struct acpi_device*) ; 
 scalar_t__ FUNC6 (unsigned long long) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 TYPE_4__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct acpi_processor*) ; 
 int /*<<< orphan*/  FUNC15 (int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct acpi_device *device)
{
	union acpi_object object = { 0 };
	struct acpi_buffer buffer = { sizeof(union acpi_object), &object };
	struct acpi_processor *pr = FUNC5(device);
	int device_declaration = 0;
	acpi_status status = AE_OK;
	static int cpu0_initialized;
	unsigned long long value;

	FUNC13();

	/*
	 * Check to see if we have bus mastering arbitration control.  This
	 * is required for proper C3 usage (to maintain cache coherency).
	 */
	if (acpi_gbl_FADT.pm2_control_block && acpi_gbl_FADT.pm2_control_length) {
		pr->flags.bm_control = 1;
		FUNC0((ACPI_DB_INFO,
				  "Bus mastering arbitration control present\n"));
	} else
		FUNC0((ACPI_DB_INFO,
				  "No bus mastering arbitration control\n"));

	if (!FUNC23(FUNC4(device), ACPI_PROCESSOR_OBJECT_HID)) {
		/* Declared with "Processor" statement; match ProcessorID */
		status = FUNC8(pr->handle, NULL, NULL, &buffer);
		if (FUNC1(status)) {
			FUNC17(&device->dev,
				"Failed to evaluate processor object (0x%x)\n",
				status);
			return -ENODEV;
		}

		pr->acpi_id = object.processor.proc_id;
	} else {
		/*
		 * Declared with "Device" statement; match _UID.
		 * Note that we don't handle string _UIDs yet.
		 */
		status = FUNC7(pr->handle, METHOD_NAME__UID,
						NULL, &value);
		if (FUNC1(status)) {
			FUNC17(&device->dev,
				"Failed to evaluate processor _UID (0x%x)\n",
				status);
			return -ENODEV;
		}
		device_declaration = 1;
		pr->acpi_id = value;
	}

	if (FUNC6(pr->acpi_id)) {
		if (pr->acpi_id == 0xff)
			FUNC18(&device->dev,
				"Entry not well-defined, consider updating BIOS\n");
		else
			FUNC17(&device->dev,
				"Failed to get unique processor _UID (0x%x)\n",
				pr->acpi_id);
		return -ENODEV;
	}

	pr->phys_id = FUNC9(pr->handle, device_declaration,
					pr->acpi_id);
	if (FUNC20(pr->phys_id))
		FUNC10(pr->handle, "failed to get CPU physical ID.\n");

	pr->id = FUNC12(pr->phys_id, pr->acpi_id);
	if (!cpu0_initialized && !FUNC11()) {
		cpu0_initialized = 1;
		/*
		 * Handle UP system running SMP kernel, with no CPU
		 * entry in MADT
		 */
		if (FUNC19(pr->id) && (FUNC21() == 1))
			pr->id = 0;
	}

	/*
	 *  Extra Processor objects may be enumerated on MP systems with
	 *  less than the max # of CPUs. They should be ignored _iff
	 *  they are physically not present.
	 *
	 *  NOTE: Even if the processor has a cpuid, it may not be present
	 *  because cpuid <-> apicid mapping is persistent now.
	 */
	if (FUNC19(pr->id) || !FUNC16(pr->id)) {
		int ret = FUNC14(pr);
		if (ret)
			return ret;
	}

	/*
	 * On some boxes several processors use the same processor bus id.
	 * But they are located in different scope. For example:
	 * \_SB.SCK0.CPU0
	 * \_SB.SCK1.CPU0
	 * Rename the processor device bus id. And the new bus id will be
	 * generated as the following format:
	 * CPU+CPU ID.
	 */
	FUNC22(FUNC3(device), "CPU%X", pr->id);
	FUNC0((ACPI_DB_INFO, "Processor [%d:%d]\n", pr->id,
			  pr->acpi_id));

	if (!object.processor.pblk_address)
		FUNC0((ACPI_DB_INFO, "No PBLK (NULL address)\n"));
	else if (object.processor.pblk_length != 6)
		FUNC17(&device->dev, "Invalid PBLK length [%d]\n",
			    object.processor.pblk_length);
	else {
		pr->throttling.address = object.processor.pblk_address;
		pr->throttling.duty_offset = acpi_gbl_FADT.duty_offset;
		pr->throttling.duty_width = acpi_gbl_FADT.duty_width;

		pr->pblk = object.processor.pblk_address;
	}

	/*
	 * If ACPI describes a slot number for this CPU, we can use it to
	 * ensure we get the right value in the "physical id" field
	 * of /proc/cpuinfo
	 */
	status = FUNC7(pr->handle, "_SUN", NULL, &value);
	if (FUNC2(status))
		FUNC15(pr->id, value);

	return 0;
}
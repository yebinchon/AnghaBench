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
typedef  scalar_t__ u64 ;
struct TYPE_5__ {scalar_t__ space_id; } ;
struct TYPE_4__ {scalar_t__ space_id; } ;
struct TYPE_6__ {int state_count; int /*<<< orphan*/  shared_cpu_map; TYPE_2__ status_register; TYPE_1__ control_register; } ;
struct powernow_k8_data {scalar_t__ cpu; int numps; TYPE_3__ acpi_data; struct cpufreq_frequency_table* powernow_table; } ;
struct cpufreq_frequency_table {int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_FIXED_HARDWARE ; 
 int /*<<< orphan*/  CPUFREQ_TABLE_END ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct powernow_k8_data*,struct cpufreq_frequency_table*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpufreq_frequency_table*) ; 
 struct cpufreq_frequency_table* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct powernow_k8_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct powernow_k8_data*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct powernow_k8_data *data)
{
	struct cpufreq_frequency_table *powernow_table;
	int ret_val = -ENODEV;
	u64 control, status;

	if (FUNC1(&data->acpi_data, data->cpu)) {
		FUNC8("register performance failed: bad ACPI data\n");
		return -EIO;
	}

	/* verify the data contained in the ACPI structures */
	if (data->acpi_data.state_count <= 1) {
		FUNC8("No ACPI P-States\n");
		goto err_out;
	}

	control = data->acpi_data.control_register.space_id;
	status = data->acpi_data.status_register.space_id;

	if ((control != ACPI_ADR_SPACE_FIXED_HARDWARE) ||
	    (status != ACPI_ADR_SPACE_FIXED_HARDWARE)) {
		FUNC8("Invalid control/status registers (%llx - %llx)\n",
			control, status);
		goto err_out;
	}

	/* fill in data->powernow_table */
	powernow_table = FUNC6((sizeof(*powernow_table)
		* (data->acpi_data.state_count + 1)), GFP_KERNEL);
	if (!powernow_table)
		goto err_out;

	/* fill in data */
	data->numps = data->acpi_data.state_count;
	FUNC7(data, 0);

	ret_val = FUNC4(data, powernow_table);
	if (ret_val)
		goto err_out_mem;

	powernow_table[data->acpi_data.state_count].frequency =
		CPUFREQ_TABLE_END;
	data->powernow_table = powernow_table;

	if (FUNC3(FUNC11(data->cpu)) == data->cpu)
		FUNC10(data);

	/* notify BIOS that we exist */
	FUNC0(THIS_MODULE);

	if (!FUNC12(&data->acpi_data.shared_cpu_map, GFP_KERNEL)) {
		FUNC9("unable to alloc powernow_k8_data cpumask\n");
		ret_val = -ENOMEM;
		goto err_out_mem;
	}

	return 0;

err_out_mem:
	FUNC5(powernow_table);

err_out:
	FUNC2(data->cpu);

	/* data->acpi_data.state_count informs us at ->exit()
	 * whether ACPI was used */
	data->acpi_data.state_count = 0;

	return ret_val;
}
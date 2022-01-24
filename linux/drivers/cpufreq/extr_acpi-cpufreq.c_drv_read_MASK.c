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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  read; } ;
struct drv_cmd {int /*<<< orphan*/  val; TYPE_1__ func; int /*<<< orphan*/ * reg; } ;
struct cpumask {int dummy; } ;
struct acpi_processor_performance {int /*<<< orphan*/  control_register; } ;
struct acpi_cpufreq_data {int /*<<< orphan*/  cpu_freq_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  do_drv_read ; 
 int FUNC1 (struct cpumask const*,int /*<<< orphan*/ ,struct drv_cmd*,int) ; 
 struct acpi_processor_performance* FUNC2 (struct acpi_cpufreq_data*) ; 

__attribute__((used)) static u32 FUNC3(struct acpi_cpufreq_data *data, const struct cpumask *mask)
{
	struct acpi_processor_performance *perf = FUNC2(data);
	struct drv_cmd cmd = {
		.reg = &perf->control_register,
		.func.read = data->cpu_freq_read,
	};
	int err;

	err = FUNC1(mask, do_drv_read, &cmd, 1);
	FUNC0(err);	/* smp_call_function_any() was buggy? */
	return cmd.val;
}
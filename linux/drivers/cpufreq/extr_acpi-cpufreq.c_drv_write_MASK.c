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
struct TYPE_2__ {int /*<<< orphan*/  write; } ;
struct drv_cmd {TYPE_1__ func; int /*<<< orphan*/  val; int /*<<< orphan*/ * reg; } ;
struct cpumask {int dummy; } ;
struct acpi_processor_performance {int /*<<< orphan*/  control_register; } ;
struct acpi_cpufreq_data {int /*<<< orphan*/  cpu_freq_write; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drv_cmd*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cpumask const*,int /*<<< orphan*/  (*) (struct drv_cmd*),struct drv_cmd*,int) ; 
 struct acpi_processor_performance* FUNC5 (struct acpi_cpufreq_data*) ; 

__attribute__((used)) static void FUNC6(struct acpi_cpufreq_data *data,
		      const struct cpumask *mask, u32 val)
{
	struct acpi_processor_performance *perf = FUNC5(data);
	struct drv_cmd cmd = {
		.reg = &perf->control_register,
		.val = val,
		.func.write = data->cpu_freq_write,
	};
	int this_cpu;

	this_cpu = FUNC2();
	if (FUNC0(this_cpu, mask))
		FUNC1(&cmd);

	FUNC4(mask, do_drv_write, &cmd, 1);
	FUNC3();
}
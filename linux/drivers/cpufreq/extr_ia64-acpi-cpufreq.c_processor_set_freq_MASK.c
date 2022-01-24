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
typedef  int u32 ;
struct cpufreq_acpi_req {unsigned int cpu; int state; } ;
struct TYPE_4__ {int state; TYPE_1__* states; } ;
struct cpufreq_acpi_io {TYPE_2__ acpi_data; scalar_t__ resume; } ;
struct TYPE_3__ {scalar_t__ control; } ;

/* Variables and functions */
 long EAGAIN ; 
 long ENODEV ; 
 struct cpufreq_acpi_io** acpi_io_data ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int) ; 
 unsigned int FUNC3 () ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static long
FUNC5 (
	void *arg)
{
	struct cpufreq_acpi_req *req = arg;
	unsigned int		cpu = req->cpu;
	struct cpufreq_acpi_io	*data = acpi_io_data[cpu];
	int			ret, state = req->state;
	u32			value;

	FUNC0("processor_set_freq\n");
	if (FUNC3() != cpu)
		return -EAGAIN;

	if (state == data->acpi_data.state) {
		if (FUNC4(data->resume)) {
			FUNC0("Called after resume, resetting to P%d\n", state);
			data->resume = 0;
		} else {
			FUNC0("Already at target state (P%d)\n", state);
			return 0;
		}
	}

	FUNC0("Transitioning from P%d to P%d\n",
		data->acpi_data.state, state);

	/*
	 * First we write the target state's 'control' value to the
	 * control_register.
	 */
	value = (u32) data->acpi_data.states[state].control;

	FUNC0("Transitioning to state: 0x%08x\n", value);

	ret = FUNC2(value);
	if (ret) {
		FUNC1("Transition failed with error %d\n", ret);
		return -ENODEV;
	}

	data->acpi_data.state = state;
	return 0;
}
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
struct cpufreq_acpi_req {unsigned int cpu; } ;
struct cpufreq_acpi_io {int dummy; } ;

/* Variables and functions */
 long EAGAIN ; 
 struct cpufreq_acpi_io** acpi_io_data ; 
 int FUNC0 (struct cpufreq_acpi_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 () ; 

__attribute__((used)) static long
FUNC5 (
	void *arg)
{
	struct cpufreq_acpi_req *req = arg;
	unsigned int		cpu = req->cpu;
	struct cpufreq_acpi_io	*data = acpi_io_data[cpu];
	u32			value;
	int			ret;

	FUNC1("processor_get_freq\n");
	if (FUNC4() != cpu)
		return -EAGAIN;

	/* processor_get_pstate gets the instantaneous frequency */
	ret = FUNC3(&value);
	if (ret) {
		FUNC2("get performance failed with error %d\n", ret);
		return ret;
	}
	return 1000 * FUNC0(data, value);
}
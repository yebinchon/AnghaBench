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
struct TYPE_2__ {int /*<<< orphan*/  microcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  __reload_late ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ boot_cpu_data ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  late_cpus_in ; 
 int /*<<< orphan*/  late_cpus_out ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;

	FUNC0(&late_cpus_in,  0);
	FUNC0(&late_cpus_out, 0);

	ret = FUNC3(__reload_late, NULL, cpu_online_mask);
	if (ret > 0)
		FUNC1();

	FUNC2("Reload completed, microcode revision: 0x%x\n", boot_cpu_data.microcode);

	return ret;
}
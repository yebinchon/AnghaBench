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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static unsigned long FUNC6(phandle node, int cpuid)
{
	bool is_cpu_node = false;
	unsigned long freq = 0;
	char type[128];

	if (!node)
		return freq;

	if (FUNC3(node, "device_type", type, sizeof(type)) != -1)
		is_cpu_node = (FUNC5(type, "cpu") == 0);

	/* try upa-portid then cpuid to get cpuid, see prom_64.c */
	if (is_cpu_node && (FUNC1(node, "upa-portid") == cpuid ||
			    FUNC1(node, "cpuid") == cpuid))
		freq = FUNC2(node, "clock-frequency", 0);
	if (!freq)
		freq = FUNC6(FUNC0(node), cpuid);
	if (!freq)
		freq = FUNC6(FUNC4(node), cpuid);

	return freq;
}
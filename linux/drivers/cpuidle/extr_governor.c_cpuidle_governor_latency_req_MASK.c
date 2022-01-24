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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_QOS_CPU_DMA_LATENCY ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(unsigned int cpu)
{
	int global_req = FUNC2(PM_QOS_CPU_DMA_LATENCY);
	struct device *device = FUNC1(cpu);
	int device_req = FUNC0(device);

	return device_req < global_req ? device_req : global_req;
}
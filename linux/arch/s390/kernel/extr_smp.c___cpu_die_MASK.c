#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcpu {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cpu_attach_mask; } ;
struct TYPE_5__ {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 TYPE_2__ init_mm ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 struct pcpu* pcpu_devices ; 
 int /*<<< orphan*/  FUNC3 (struct pcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcpu*) ; 

void FUNC5(unsigned int cpu)
{
	struct pcpu *pcpu;

	/* Wait until target cpu is down */
	pcpu = pcpu_devices + cpu;
	while (!FUNC4(pcpu))
		FUNC0();
	FUNC3(pcpu);
	FUNC1(cpu, FUNC2(&init_mm));
	FUNC1(cpu, &init_mm.context.cpu_attach_mask);
}
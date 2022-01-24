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
struct mce {int /*<<< orphan*/  microcode; int /*<<< orphan*/  cpuid; int /*<<< orphan*/  time; int /*<<< orphan*/  cpuvendor; } ;
struct TYPE_2__ {int /*<<< orphan*/  microcode; int /*<<< orphan*/  x86_vendor; } ;

/* Variables and functions */
 TYPE_1__ boot_cpu_data ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct mce*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mce *m)
{
	FUNC2(m, 0, sizeof(struct mce));

	m->cpuvendor = boot_cpu_data.x86_vendor;
	m->time	     = FUNC1();
	m->cpuid     = FUNC0(1);
	m->microcode = boot_cpu_data.microcode;
}
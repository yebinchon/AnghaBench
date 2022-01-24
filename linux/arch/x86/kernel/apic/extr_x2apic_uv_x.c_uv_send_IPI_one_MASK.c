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

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long,int) ; 
 int /*<<< orphan*/  x86_cpu_to_apicid ; 

__attribute__((used)) static void FUNC3(int cpu, int vector)
{
	unsigned long apicid;
	int pnode;

	apicid = FUNC0(x86_cpu_to_apicid, cpu);
	pnode = FUNC1(apicid);
	FUNC2(pnode, apicid, vector);
}
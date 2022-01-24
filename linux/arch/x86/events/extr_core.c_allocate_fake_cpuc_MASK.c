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
struct cpu_hw_events {int is_fake; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cpu_hw_events* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_hw_events*) ; 
 scalar_t__ FUNC2 (struct cpu_hw_events*,int) ; 
 struct cpu_hw_events* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static struct cpu_hw_events *FUNC5(void)
{
	struct cpu_hw_events *cpuc;
	int cpu = FUNC4();

	cpuc = FUNC3(sizeof(*cpuc), GFP_KERNEL);
	if (!cpuc)
		return FUNC0(-ENOMEM);
	cpuc->is_fake = 1;

	if (FUNC2(cpuc, cpu))
		goto error;

	return cpuc;
error:
	FUNC1(cpuc);
	return FUNC0(-ENOMEM);
}
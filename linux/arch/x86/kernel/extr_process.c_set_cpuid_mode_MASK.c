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
struct task_struct {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  X86_FEATURE_CPUID_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct task_struct *task, unsigned long cpuid_enabled)
{
	if (!FUNC0(X86_FEATURE_CPUID_FAULT))
		return -ENODEV;

	if (cpuid_enabled)
		FUNC2();
	else
		FUNC1();

	return 0;
}
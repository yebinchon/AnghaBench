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
struct kimage {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ KEXEC_TYPE_CRASH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data)
{
	FUNC0(0x04); /* enable DAT */
	FUNC4();
	FUNC5();
	FUNC3();
#ifdef CONFIG_CRASH_DUMP
	if (((struct kimage *) data)->type == KEXEC_TYPE_CRASH)
		__machine_kdump(data);
#endif
	FUNC1(data);
}
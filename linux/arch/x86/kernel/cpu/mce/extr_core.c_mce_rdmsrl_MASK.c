#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  finished; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ injectm ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static u64 FUNC5(u32 msr)
{
	u64 v;

	if (FUNC1(injectm.finished)) {
		int offset = FUNC2(msr);

		if (offset < 0)
			return 0;
		return *(u64 *)((char *)FUNC4(&injectm) + offset);
	}

	if (FUNC3(msr, &v)) {
		FUNC0(1, "mce: Unable to read MSR 0x%x!\n", msr);
		/*
		 * Return zero in case the access faulted. This should
		 * not happen normally but can happen if the CPU does
		 * something weird, or if the code is buggy.
		 */
		v = 0;
	}

	return v;
}
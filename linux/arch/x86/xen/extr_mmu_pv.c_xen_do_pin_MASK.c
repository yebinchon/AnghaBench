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
struct TYPE_2__ {int /*<<< orphan*/  mfn; } ;
struct mmuext_op {unsigned int cmd; TYPE_1__ arg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct mmuext_op*) ; 

__attribute__((used)) static void FUNC2(unsigned level, unsigned long pfn)
{
	struct mmuext_op op;

	op.cmd = level;
	op.arg1.mfn = FUNC0(pfn);

	FUNC1(&op);
}
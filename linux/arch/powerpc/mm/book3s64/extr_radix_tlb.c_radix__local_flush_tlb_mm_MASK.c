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
struct TYPE_2__ {unsigned long id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned long MMU_NO_CONTEXT ; 
 int /*<<< orphan*/  RIC_FLUSH_TLB ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct mm_struct *mm)
{
	unsigned long pid;

	FUNC1();
	pid = mm->context.id;
	if (pid != MMU_NO_CONTEXT)
		FUNC0(pid, RIC_FLUSH_TLB);
	FUNC2();
}
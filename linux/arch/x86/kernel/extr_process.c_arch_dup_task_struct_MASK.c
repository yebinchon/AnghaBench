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
struct TYPE_2__ {int /*<<< orphan*/ * vm86; } ;
struct task_struct {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  arch_task_struct_size ; 
 int FUNC0 (struct task_struct*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct task_struct*,int /*<<< orphan*/ ) ; 

int FUNC2(struct task_struct *dst, struct task_struct *src)
{
	FUNC1(dst, src, arch_task_struct_size);
#ifdef CONFIG_VM86
	dst->thread.vm86 = NULL;
#endif

	return FUNC0(dst, src);
}
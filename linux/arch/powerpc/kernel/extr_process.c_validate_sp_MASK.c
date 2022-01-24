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
 unsigned long THREAD_SIZE ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (unsigned long,struct task_struct*,unsigned long) ; 

int FUNC2(unsigned long sp, struct task_struct *p,
		       unsigned long nbytes)
{
	unsigned long stack_page = (unsigned long)FUNC0(p);

	if (sp < THREAD_SIZE)
		return 0;

	if (sp >= stack_page && sp <= stack_page + THREAD_SIZE - nbytes)
		return 1;

	return FUNC1(sp, p, nbytes);
}
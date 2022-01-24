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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  print_trace ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long*,int /*<<< orphan*/ ) ; 

void FUNC2(struct task_struct *task, unsigned long *esp)
{
	if (esp == NULL)
		esp = (unsigned long *)&esp;

	FUNC0("Call trace:\n");
	FUNC1(NULL, esp, print_trace);
}
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
struct child_to_clean {struct child_to_clean* next; struct child_process* process; int /*<<< orphan*/  pid; } ;
struct child_process {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct child_to_clean* children_to_clean ; 
 int /*<<< orphan*/  cleanup_children_on_exit ; 
 int /*<<< orphan*/  cleanup_children_on_signal ; 
 int installed_child_cleanup_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct child_to_clean* FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(pid_t pid, struct child_process *process)
{
	struct child_to_clean *p = FUNC2(sizeof(*p));
	p->pid = pid;
	p->process = process;
	p->next = children_to_clean;
	children_to_clean = p;

	if (!installed_child_cleanup_handler) {
		FUNC0(cleanup_children_on_exit);
		FUNC1(cleanup_children_on_signal);
		installed_child_cleanup_handler = 1;
	}
}
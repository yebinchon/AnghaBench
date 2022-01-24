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
struct child_process {int dummy; } ;
struct subprocess_entry {struct child_process process; } ;
struct subprocess_capability {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 scalar_t__ FUNC0 (struct child_process*,struct subprocess_capability*,unsigned int*) ; 
 scalar_t__ FUNC1 (struct child_process*,char const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct subprocess_entry *entry,
			 const char *welcome_prefix,
			 int *versions,
			 int *chosen_version,
			 struct subprocess_capability *capabilities,
			 unsigned int *supported_capabilities)
{
	int retval;
	struct child_process *process = &entry->process;

	FUNC3(SIGPIPE, SIG_IGN);

	retval = FUNC1(process, welcome_prefix, versions,
				   chosen_version) ||
		 FUNC0(process, capabilities,
					supported_capabilities);

	FUNC2(SIGPIPE);
	return retval;
}
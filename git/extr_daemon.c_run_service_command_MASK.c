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
struct child_process {int git_cmd; int err; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct child_process*) ; 
 scalar_t__ FUNC4 (struct child_process*) ; 

__attribute__((used)) static int FUNC5(struct child_process *cld)
{
	FUNC0(&cld->args, ".");
	cld->git_cmd = 1;
	cld->err = -1;
	if (FUNC4(cld))
		return -1;

	FUNC1(0);
	FUNC1(1);

	FUNC2(cld->err);

	return FUNC3(cld);
}
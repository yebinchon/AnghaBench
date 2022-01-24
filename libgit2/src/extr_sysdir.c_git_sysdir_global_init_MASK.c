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
struct TYPE_3__ {int (* guess ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* git_sysdir__dirs ; 
 int /*<<< orphan*/  git_sysdir_global_shutdown ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(void)
{
	size_t i;
	int error = 0;

	for (i = 0; !error && i < FUNC0(git_sysdir__dirs); i++)
		error = git_sysdir__dirs[i].guess(&git_sysdir__dirs[i].buf);

	FUNC1(git_sysdir_global_shutdown);

	return error;
}
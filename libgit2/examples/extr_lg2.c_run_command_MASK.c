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
struct args_info {size_t pos; int /*<<< orphan*/ * argv; scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int (* git_command_fn ) (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ;
struct TYPE_2__ {char* message; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(git_command_fn fn, git_repository *repo, struct args_info args)
{
	int error;

	/* Run the command. If something goes wrong, print the error message to stderr */
	error = fn(repo, args.argc - args.pos, &args.argv[args.pos]);
	if (error < 0) {
		if (FUNC1() == NULL)
			FUNC0(stderr, "Error without message");
		else
			FUNC0(stderr, "Bad news:\n %s\n", FUNC1()->message);
	}

	return !!error;
}
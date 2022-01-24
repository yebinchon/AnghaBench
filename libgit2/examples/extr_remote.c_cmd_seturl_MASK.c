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
struct opts {int argc; char** argv; } ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(git_repository *repo, struct opts *o)
{
	int i, retval, push = 0;
	char *name = NULL, *url = NULL;

	for (i = 0; i < o->argc; i++) {
		char *arg = o->argv[i];

		if (!FUNC3(arg, "--push")) {
			push = 1;
		} else if (arg[0] != '-' && name == NULL) {
			name = arg;
		} else if (arg[0] != '-' && url == NULL) {
			url = arg;
		} else {
			FUNC4("invalid argument to set-url", arg);
		}
	}

	if (name == NULL || url == NULL)
		FUNC4("you need to specify remote and the new URL", NULL);

	if (push)
		retval = FUNC1(repo, name, url);
	else
		retval = FUNC2(repo, name, url);

	FUNC0(retval, "could not set URL", url);

	return 0;
}
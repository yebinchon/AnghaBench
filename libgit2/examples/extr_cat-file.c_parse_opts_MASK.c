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
struct opts {char* rev; int verbose; int /*<<< orphan*/  action; int /*<<< orphan*/  dir; } ;
struct args_info {int pos; } ;

/* Variables and functions */
 struct args_info ARGS_INFO_INIT ; 
 int /*<<< orphan*/  SHOW_NONE ; 
 int /*<<< orphan*/  SHOW_PRETTY ; 
 int /*<<< orphan*/  SHOW_SIZE ; 
 int /*<<< orphan*/  SHOW_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct args_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(struct opts *o, int argc, char *argv[])
{
	struct args_info args = ARGS_INFO_INIT;

	for (args.pos = 1; args.pos < argc; ++args.pos) {
		char *a = argv[args.pos];

		if (a[0] != '-') {
			if (o->rev != NULL)
				FUNC2("Only one rev should be provided", NULL);
			else
				o->rev = a;
		}
		else if (!FUNC1(a, "-t"))
			o->action = SHOW_TYPE;
		else if (!FUNC1(a, "-s"))
			o->action = SHOW_SIZE;
		else if (!FUNC1(a, "-e"))
			o->action = SHOW_NONE;
		else if (!FUNC1(a, "-p"))
			o->action = SHOW_PRETTY;
		else if (!FUNC1(a, "-q"))
			o->verbose = 0;
		else if (!FUNC1(a, "-v"))
			o->verbose = 1;
		else if (!FUNC1(a, "--help") || !FUNC1(a, "-h"))
			FUNC2(NULL, NULL);
		else if (!FUNC0(&o->dir, &args, "--git-dir"))
			FUNC2("Unknown option", a);
	}

	if (!o->action || !o->rev)
		FUNC2(NULL, NULL);

}
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
struct opts {int M; int C; int F; char* commitspec; char* path; int /*<<< orphan*/  end_line; int /*<<< orphan*/  start_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct opts *o, int argc, char *argv[])
{
	int i;
	char *bare_args[3] = {0};

	if (argc < 2) FUNC6(NULL, NULL);

	for (i=1; i<argc; i++) {
		char *a = argv[i];

		if (a[0] != '-') {
			int i=0;
			while (bare_args[i] && i < 3) ++i;
			if (i >= 3)
				FUNC6("Invalid argument set", NULL);
			bare_args[i] = a;
		}
		else if (!FUNC5(a, "--"))
			continue;
		else if (!FUNC4(a, "-M"))
			o->M = 1;
		else if (!FUNC4(a, "-C"))
			o->C = 1;
		else if (!FUNC4(a, "-F"))
			o->F = 1;
		else if (!FUNC4(a, "-L")) {
			i++; a = argv[i];
			if (i >= argc) FUNC1("Not enough arguments to -L", NULL);
			FUNC0(FUNC3(a, "%d,%d", &o->start_line, &o->end_line)-2, "-L format error", NULL);
		}
		else {
			/* commit range */
			if (o->commitspec) FUNC1("Only one commit spec allowed", NULL);
			o->commitspec = a;
		}
	}

	/* Handle the bare arguments */
	if (!bare_args[0]) FUNC6("Please specify a path", NULL);
	o->path = bare_args[0];
	if (bare_args[1]) {
		/* <commitspec> <path> */
		o->path = bare_args[1];
		o->commitspec = bare_args[0];
	}
	if (bare_args[2]) {
		/* <oldcommit> <newcommit> <path> */
		char spec[128] = {0};
		o->path = bare_args[2];
		FUNC2(spec, "%s..%s", bare_args[0], bare_args[1]);
		o->commitspec = spec;
	}
}
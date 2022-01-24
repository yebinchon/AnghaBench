#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct submodule {char* ignore; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int ignore_submodules; } ;
struct diff_options {TYPE_1__ flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*,char const**) ; 
 struct submodule* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,char const*) ; 
 TYPE_2__* the_repository ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6(struct diff_options *diffopt,
					     const char *path)
{
	const struct submodule *submodule = FUNC4(the_repository,
								&null_oid, path);
	if (submodule) {
		const char *ignore;
		char *key;

		key = FUNC5("submodule.%s.ignore", submodule->name);
		if (FUNC3(the_repository, key, &ignore))
			ignore = submodule->ignore;
		FUNC0(key);

		if (ignore)
			FUNC1(diffopt, ignore);
		else if (FUNC2(the_repository->index))
			diffopt->flags.ignore_submodules = 1;
	}
}
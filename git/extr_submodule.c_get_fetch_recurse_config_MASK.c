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
struct submodule_parallel_fetch {scalar_t__ command_line_option; int default_option; int /*<<< orphan*/  r; } ;
struct submodule {int fetch_recurse; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ RECURSE_SUBMODULES_DEFAULT ; 
 int RECURSE_SUBMODULES_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const**) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct submodule *submodule,
				    struct submodule_parallel_fetch *spf)
{
	if (spf->command_line_option != RECURSE_SUBMODULES_DEFAULT)
		return spf->command_line_option;

	if (submodule) {
		char *key;
		const char *value;

		int fetch_recurse = submodule->fetch_recurse;
		key = FUNC3("submodule.%s.fetchRecurseSubmodules", submodule->name);
		if (!FUNC2(spf->r, key, &value)) {
			fetch_recurse = FUNC1(key, value);
		}
		FUNC0(key);

		if (fetch_recurse != RECURSE_SUBMODULES_NONE)
			/* local config overrules everything except commandline */
			return fetch_recurse;
	}

	return spf->default_option;
}
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
struct fetch_config {int /*<<< orphan*/ * recurse_submodules; int /*<<< orphan*/ * max_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *var, const char *value, void *cb)
{
	struct fetch_config *config = cb;
	if (!FUNC2(var, "submodule.fetchjobs")) {
		*(config->max_children) = FUNC1(var, value);
		return 0;
	} else if (!FUNC2(var, "fetch.recursesubmodules")) {
		*(config->recurse_submodules) = FUNC0(var, value);
		return 0;
	}

	return 0;
}
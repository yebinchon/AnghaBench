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
struct convert_driver {int /*<<< orphan*/  required; int /*<<< orphan*/  process; int /*<<< orphan*/  clean; int /*<<< orphan*/  smudge; struct convert_driver* next; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,char const**,int*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 struct convert_driver* user_convert ; 
 struct convert_driver** user_convert_tail ; 
 struct convert_driver* FUNC5 (int,int) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int) ; 

__attribute__((used)) static int FUNC7(const char *var, const char *value, void *cb)
{
	const char *key, *name;
	int namelen;
	struct convert_driver *drv;

	/*
	 * External conversion drivers are configured using
	 * "filter.<name>.variable".
	 */
	if (FUNC2(var, "filter", &name, &namelen, &key) < 0 || !name)
		return 0;
	for (drv = user_convert; drv; drv = drv->next)
		if (!FUNC4(drv->name, name, namelen) && !drv->name[namelen])
			break;
	if (!drv) {
		drv = FUNC5(1, sizeof(struct convert_driver));
		drv->name = FUNC6(name, namelen);
		*user_convert_tail = drv;
		user_convert_tail = &(drv->next);
	}

	/*
	 * filter.<name>.smudge and filter.<name>.clean specifies
	 * the command line:
	 *
	 *	command-line
	 *
	 * The command-line will not be interpolated in any way.
	 */

	if (!FUNC3("smudge", key))
		return FUNC1(&drv->smudge, var, value);

	if (!FUNC3("clean", key))
		return FUNC1(&drv->clean, var, value);

	if (!FUNC3("process", key))
		return FUNC1(&drv->process, var, value);

	if (!FUNC3("required", key)) {
		drv->required = FUNC0(var, value);
		return 0;
	}

	return 0;
}
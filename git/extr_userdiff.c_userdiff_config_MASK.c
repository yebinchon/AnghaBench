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
struct userdiff_driver {int binary; int /*<<< orphan*/  word_regex; int /*<<< orphan*/  textconv_want_cache; int /*<<< orphan*/  textconv; int /*<<< orphan*/  external; int /*<<< orphan*/  funcname; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct userdiff_driver*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 struct userdiff_driver* drivers ; 
 int /*<<< orphan*/  drivers_alloc ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct userdiff_driver*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ndrivers ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,char const**,int*,char const**) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 struct userdiff_driver* FUNC8 (char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int) ; 

int FUNC10(const char *k, const char *v)
{
	struct userdiff_driver *drv;
	const char *name, *type;
	int namelen;

	if (FUNC4(k, "diff", &name, &namelen, &type) || !name)
		return 0;

	drv = FUNC8(name, namelen);
	if (!drv) {
		FUNC0(drivers, ndrivers+1, drivers_alloc);
		drv = &drivers[ndrivers++];
		FUNC2(drv, 0, sizeof(*drv));
		drv->name = FUNC9(name, namelen);
		drv->binary = -1;
	}

	if (!FUNC7(type, "funcname"))
		return FUNC5(&drv->funcname, k, v, 0);
	if (!FUNC7(type, "xfuncname"))
		return FUNC5(&drv->funcname, k, v, REG_EXTENDED);
	if (!FUNC7(type, "binary"))
		return FUNC6(&drv->binary, k, v);
	if (!FUNC7(type, "command"))
		return FUNC1(&drv->external, k, v);
	if (!FUNC7(type, "textconv"))
		return FUNC1(&drv->textconv, k, v);
	if (!FUNC7(type, "cachetextconv"))
		return FUNC3(&drv->textconv_want_cache, k, v);
	if (!FUNC7(type, "wordregex"))
		return FUNC1(&drv->word_regex, k, v);

	return 0;
}
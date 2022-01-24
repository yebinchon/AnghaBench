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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aliases ; 
 int /*<<< orphan*/  autocorrect ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*,char const*,void*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(const char *var, const char *value, void *cb)
{
	const char *p;

	if (!FUNC4(var, "help.autocorrect"))
		autocorrect = FUNC1(var,value);
	/* Also use aliases for command lookup */
	if (FUNC3(var, "alias.", &p))
		FUNC0(&aliases, p, FUNC5(p));

	return FUNC2(var, value, cb);
}
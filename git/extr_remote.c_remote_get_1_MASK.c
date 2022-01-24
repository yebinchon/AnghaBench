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
struct remote {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct remote*,char const*) ; 
 struct branch* current_branch ; 
 scalar_t__ FUNC1 () ; 
 struct remote* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct remote*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct remote*) ; 
 int /*<<< orphan*/  FUNC6 (struct remote*) ; 
 scalar_t__ FUNC7 (char const*) ; 

__attribute__((used)) static struct remote *FUNC8(const char *name,
				   const char *(*get_default)(struct branch *, int *))
{
	struct remote *ret;
	int name_given = 0;

	FUNC4();

	if (name)
		name_given = 1;
	else
		name = get_default(current_branch, &name_given);

	ret = FUNC2(name, 0);
	if (FUNC7(name) && FUNC1()) {
		if (!FUNC6(ret))
			FUNC5(ret);
		if (!FUNC6(ret))
			FUNC3(ret);
	}
	if (name_given && !FUNC6(ret))
		FUNC0(ret, name);
	if (!FUNC6(ret))
		return NULL;
	return ret;
}
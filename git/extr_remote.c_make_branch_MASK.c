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
struct branch {int /*<<< orphan*/ * name; int /*<<< orphan*/  refname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct branch**,int,int /*<<< orphan*/ ) ; 
 struct branch** branches ; 
 int /*<<< orphan*/  branches_alloc ; 
 int branches_nr ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 struct branch* FUNC3 (int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int) ; 

__attribute__((used)) static struct branch *FUNC7(const char *name, int len)
{
	struct branch *ret;
	int i;

	for (i = 0; i < branches_nr; i++) {
		if (len ? (!FUNC2(name, branches[i]->name, len) &&
			   !branches[i]->name[len]) :
		    !FUNC1(name, branches[i]->name))
			return branches[i];
	}

	FUNC0(branches, branches_nr + 1, branches_alloc);
	ret = FUNC3(1, sizeof(struct branch));
	branches[branches_nr++] = ret;
	if (len)
		ret->name = FUNC6(name, len);
	else
		ret->name = FUNC4(name);
	ret->refname = FUNC5("refs/heads/%s", ret->name);

	return ret;
}
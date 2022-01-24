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
struct commit_name {struct commit_name* path; int /*<<< orphan*/ * tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit_name*) ; 
 struct commit_name* FUNC1 (int) ; 
 struct commit_name* FUNC2 (struct commit_name*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct commit_name*,struct commit_name*,int) ; 

__attribute__((used)) static int FUNC5(struct commit_name **out, struct commit_name *in)
{
	struct commit_name *name;

	name = FUNC1(sizeof(struct commit_name));
	FUNC0(name);

	FUNC4(name, in,  sizeof(struct commit_name));
	name->tag = NULL;
	name->path = NULL;

	if (in->tag && FUNC3(&name->tag, in->tag) < 0)
		return -1;

	name->path = FUNC2(in->path);
	FUNC0(name->path);

	*out = name;
	return 0;
}
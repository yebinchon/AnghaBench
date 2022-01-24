#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct tree {TYPE_1__ object; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 char* FUNC3 (struct object_id*) ; 
 struct tree* FUNC4 (struct object_id*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct object_id*,int) ; 
 int /*<<< orphan*/  the_repository ; 

int FUNC8(int ac, const char **av)
{
	struct object_id hash1, hash2, shifted;
	struct tree *one, *two;

	FUNC6();

	if (FUNC2(av[1], &hash1))
		FUNC0("cannot parse %s as an object name", av[1]);
	if (FUNC2(av[2], &hash2))
		FUNC0("cannot parse %s as an object name", av[2]);
	one = FUNC4(&hash1);
	if (!one)
		FUNC0("not a tree-ish %s", av[1]);
	two = FUNC4(&hash2);
	if (!two)
		FUNC0("not a tree-ish %s", av[2]);

	FUNC7(the_repository, &one->object.oid, &two->object.oid, &shifted, -1);
	FUNC5("shifted: %s\n", FUNC3(&shifted));

	FUNC1(0);
}
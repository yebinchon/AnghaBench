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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * d ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opts ; 

void FUNC7(void)
{
	git_blob *a, *b, *c;
	git_oid a_oid, b_oid, c_oid;
	git_patch *p;

	/* tests/resources/attr/root_test1 */
	FUNC1(FUNC4(&a_oid, "45141a79", 8));
	FUNC1(FUNC3(&a, g_repo, &a_oid, 8));

	/* tests/resources/attr/root_test2 */
	FUNC1(FUNC4(&b_oid, "4d713dc4", 8));
	FUNC1(FUNC3(&b, g_repo, &b_oid, 8));

	/* tests/resources/attr/root_test3 */
	FUNC1(FUNC4(&c_oid, "c96bbb2c2557a832", 16));
	FUNC1(FUNC3(&c, g_repo, &c_oid, 16));

	/* Doing the equivalent of a `git diff -U1` on these files */

	/* diff on tests/resources/attr/root_test1 */
	FUNC1(FUNC6(&p, a, NULL, b, NULL, &opts));
	FUNC0(p, a, b, 1, 6, 0, 1, 5, 0);
	FUNC5(p);

	/* diff on tests/resources/attr/root_test2 */
	FUNC1(FUNC6(&p, b, NULL, c, NULL, &opts));
	FUNC0(p, b, c, 1, 15, 0, 3, 9, 3);
	FUNC5(p);

	/* diff on tests/resources/attr/root_test3 */
	FUNC1(FUNC6(&p, a, NULL, c, NULL, &opts));
	FUNC0(p, a, c, 1, 13, 0, 0, 12, 1);
	FUNC5(p);

	/* one more */
	FUNC1(FUNC6(&p, c, NULL, d, NULL, &opts));
	FUNC0(p, c, d, 2, 5, 9, 4, 6, 4);
	FUNC5(p);

	FUNC2(a);
	FUNC2(b);
	FUNC2(c);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int /*<<< orphan*/  BLOB_DIFF ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	git_oid a_oid, b_oid;
	git_blob *a, *b;
	git_patch *p;
	git_buf buf = GIT_BUF_INIT;

	/* tests/resources/attr/root_test1 */
	FUNC1(FUNC5(&a_oid, "45141a79", 8));
	FUNC1(FUNC3(&a, g_repo, &a_oid, 4));
	/* tests/resources/attr/root_test2 */
	FUNC1(FUNC5(&b_oid, "4d713dc4", 8));
	FUNC1(FUNC3(&b, g_repo, &b_oid, 4));

	FUNC1(FUNC7(&p, a, NULL, b, NULL, NULL));

	FUNC2(a);
	FUNC2(b);

	FUNC1(FUNC8(&buf, p));
	FUNC0(buf.ptr, BLOB_DIFF);

	FUNC6(p);
	FUNC4(&buf);
}
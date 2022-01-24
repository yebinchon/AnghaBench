#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_5__ {int status; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int GIT_DELTA_ADDED ; 
 int GIT_DELTA_DELETED ; 
 int GIT_DELTA_MODIFIED ; 
 int GIT_DELTA_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_INCLUDE_UNMODIFIED ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (size_t*,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ opts ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

void FUNC13(void)
{
	git_patch *p;
	git_blob *a;
	git_oid a_oid;
	const char *a_content = "Hello from the root\n";
	const char *b_content = "Hello from the root\n\nSome additional lines\n\nDown here below\n\n";
	size_t tc, ta, td;

	/* tests/resources/attr/root_test1 */
	FUNC2(FUNC5(&a_oid, "45141a79", 8));
	FUNC2(FUNC4(&a, g_repo, &a_oid, 8));

	/* diff from blob a to content of b */
	FUNC2(FUNC7(
		&p, a, NULL, b_content, FUNC12(b_content), NULL, &opts));

	FUNC0(p != NULL);
	FUNC1(GIT_DELTA_MODIFIED, FUNC8(p)->status);
	FUNC1(1, (int)FUNC10(p));
	FUNC1(6, FUNC11(p, 0));

	FUNC2(FUNC9(&tc, &ta, &td, p));
	FUNC1(1, (int)tc);
	FUNC1(5, (int)ta);
	FUNC1(0, (int)td);

	FUNC6(p);

	/* diff from blob a to content of a */
	opts.flags |= GIT_DIFF_INCLUDE_UNMODIFIED;
	FUNC2(FUNC7(
		&p, a, NULL, a_content, FUNC12(a_content), NULL, &opts));
	FUNC0(p != NULL);
	FUNC1(GIT_DELTA_UNMODIFIED, FUNC8(p)->status);
	FUNC1(0, (int)FUNC10(p));
	FUNC6(p);

	/* diff from NULL blob to content of a */
	FUNC2(FUNC7(
		&p, NULL, NULL, a_content, FUNC12(a_content), NULL, &opts));
	FUNC0(p != NULL);
	FUNC1(GIT_DELTA_ADDED, FUNC8(p)->status);
	FUNC1(1, (int)FUNC10(p));
	FUNC1(1, FUNC11(p, 0));
	FUNC6(p);

	/* diff from blob a to NULL buffer */
	FUNC2(FUNC7(
		&p, a, NULL, NULL, 0, NULL, &opts));
	FUNC0(p != NULL);
	FUNC1(GIT_DELTA_DELETED, FUNC8(p)->status);
	FUNC1(1, (int)FUNC10(p));
	FUNC1(1, FUNC11(p, 0));
	FUNC6(p);

	/* diff with reverse */
	opts.flags ^= GIT_DIFF_REVERSE;

	FUNC2(FUNC7(
		&p, a, NULL, NULL, 0, NULL, &opts));
	FUNC0(p != NULL);
	FUNC1(GIT_DELTA_ADDED, FUNC8(p)->status);
	FUNC1(1, (int)FUNC10(p));
	FUNC1(1, FUNC11(p, 0));
	FUNC6(p);

	FUNC3(a);
}
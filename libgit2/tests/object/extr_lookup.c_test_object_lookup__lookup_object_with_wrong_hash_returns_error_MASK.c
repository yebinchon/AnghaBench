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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EMISMATCH ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	const char *oldloose = "objects/8e/73b769e97678d684b809b163bebdae2911720f",
	      *newloose = "objects/8e/73b769e97678d684b809b163bebdae2911720e",
	      *commit = "8e73b769e97678d684b809b163bebdae2911720e";
	git_buf oldpath = GIT_BUF_INIT, newpath = GIT_BUF_INIT;
	git_object *object;
	git_oid oid;

	FUNC1(FUNC8(&oid, commit));

	/* Copy object to another location with wrong hash */
	FUNC1(FUNC3(&oldpath, FUNC9(g_repo), oldloose));
	FUNC1(FUNC3(&newpath, FUNC9(g_repo), newloose));
	FUNC1(FUNC4(oldpath.ptr, newpath.ptr, 0644));

	/* Verify that lookup fails due to a hashsum mismatch */
	FUNC0(GIT_EMISMATCH, FUNC7(&object, g_repo, &oid, GIT_OBJECT_COMMIT));

	/* Disable verification and try again */
	FUNC1(FUNC5(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 0));
	FUNC1(FUNC7(&object, g_repo, &oid, GIT_OBJECT_COMMIT));
	FUNC1(FUNC5(GIT_OPT_ENABLE_STRICT_HASH_VERIFICATION, 1));

	FUNC6(object);
	FUNC2(&oldpath);
	FUNC2(&newpath);
}
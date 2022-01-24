#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
struct TYPE_4__ {int checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;

/* Variables and functions */
 int GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 

__attribute__((used)) static int FUNC16(int strategy, bool isdir)
{
	git_oid oid;
	git_object *obj = NULL;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	int ignored = 0, error;

	FUNC0(g_repo, "master");

	/* do first checkout with FORCE because we don't know if testrepo
	 * base data is clean for a checkout or not
	 */
	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC4(FUNC13(&oid, g_repo, "refs/heads/dir"));
	FUNC4(FUNC10(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	FUNC4(FUNC6(g_repo, obj, &opts));
	FUNC4(FUNC14(g_repo, "refs/heads/dir"));

	FUNC1(FUNC12("testrepo/README"));
	FUNC1(FUNC12("testrepo/branch_file.txt"));
	FUNC1(FUNC12("testrepo/new.txt"));
	FUNC1(FUNC12("testrepo/a/b.txt"));

	FUNC1(!FUNC11("testrepo/ab"));

	FUNC0(g_repo, "dir");

	FUNC9(obj);

	opts.checkout_strategy = strategy;

	if (isdir) {
		FUNC5(FUNC15("testrepo/ab", 0777));
		FUNC5(FUNC15("testrepo/ab/4.txt", 0777));

		FUNC3("testrepo/ab/4.txt/file1.txt", "as you wish");
		FUNC3("testrepo/ab/4.txt/file2.txt", "foo bar foo");
		FUNC3("testrepo/ab/4.txt/file3.txt", "inky blinky pinky clyde");

		FUNC1(FUNC11("testrepo/ab/4.txt"));
	} else {
		FUNC5(FUNC15("testrepo/ab", 0777));
		FUNC3("testrepo/ab/4.txt", "as you wish");

		FUNC1(FUNC12("testrepo/ab/4.txt"));
	}

	FUNC4(FUNC7(g_repo, "ab/4.txt\n"));

	FUNC4(FUNC8(&ignored, g_repo, "ab/4.txt"));
	FUNC2(1, ignored);

	FUNC4(FUNC13(&oid, g_repo, "refs/heads/subtrees"));
	FUNC4(FUNC10(&obj, g_repo, &oid, GIT_OBJECT_ANY));

	error = FUNC6(g_repo, obj, &opts);

	FUNC9(obj);

	return error;
}
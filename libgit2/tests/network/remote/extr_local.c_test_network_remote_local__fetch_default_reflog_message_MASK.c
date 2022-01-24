#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char** member_0; int member_1; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
struct TYPE_5__ {int /*<<< orphan*/  email; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  remote ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,char*) ; 

void FUNC14(void)
{
	char *refspec_strings[] = {
		"master:remotes/sloppy/master",
	};
	git_strarray array = {
		refspec_strings,
		1,
	};

	git_reflog *log;
	const git_reflog_entry *entry;
	char expected_reflog_msg[1024];

	FUNC4(FUNC2("testrepo.git"));

	FUNC3(FUNC11(remote, &array, NULL, NULL));

	FUNC3(FUNC10(&log, repo, "refs/remotes/sloppy/master"));
	FUNC0(1, FUNC8(log));
	entry = FUNC5(log, 0);
	FUNC1("foo@example.com", FUNC6(entry)->email);

	FUNC13(expected_reflog_msg, "fetch %s", FUNC12(remote));
	FUNC1(expected_reflog_msg, FUNC7(entry));

	FUNC9(log);
}
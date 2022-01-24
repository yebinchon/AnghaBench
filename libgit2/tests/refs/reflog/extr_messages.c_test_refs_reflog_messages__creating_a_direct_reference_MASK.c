#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  msg; int /*<<< orphan*/  oid_cur; int /*<<< orphan*/  oid_old; } ;
typedef  TYPE_1__ git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEX_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 

void FUNC13(void)
{
	git_reference *reference;
	git_oid id;
	git_reflog *reflog;
	const git_reflog_entry *entry;

	const char *name = "refs/heads/new-head";
	const char *message = "You've been logged, mate!";

	FUNC4(FUNC8(&id, g_repo, "HEAD"));

	FUNC4(FUNC6(&reference, g_repo, name, &id, 0, message));

	FUNC4(FUNC12(&reflog, g_repo, name));
	FUNC3(1, FUNC10(reflog));

	entry = FUNC9(reflog, 0);
	FUNC0(FUNC5(&entry->oid_old, GIT_OID_HEX_ZERO) == 0);
	FUNC1(&id, &entry->oid_cur);
	FUNC2(message, entry->msg);

	FUNC11(reflog);
	FUNC7(reference);
}
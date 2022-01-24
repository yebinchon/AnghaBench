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
typedef  int /*<<< orphan*/  git_signature ;
struct TYPE_4__ {int /*<<< orphan*/  oid_cur; int /*<<< orphan*/  oid_old; } ;
typedef  TYPE_1__ git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int /*<<< orphan*/  repo; int /*<<< orphan*/  worktree; } ;

/* Variables and functions */
 int /*<<< orphan*/  REFLOG ; 
 int /*<<< orphan*/  REFLOG_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ fixture ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*,char*) ; 

void FUNC13(void)
{
	git_reflog *reflog, *parent_reflog;
	const git_reflog_entry *entry;
	git_reference *head;
	git_signature *sig;
	const git_oid *oid;

	FUNC1(FUNC10(&head, fixture.worktree));
	FUNC0((oid = FUNC4(head)) != NULL);
	FUNC1(FUNC12(&sig, "foo", "foo@bar"));

	FUNC1(FUNC8(&reflog, fixture.worktree, REFLOG));
	FUNC1(FUNC5(reflog, oid, sig, REFLOG_MESSAGE));
	FUNC9(reflog);

	FUNC1(FUNC8(&parent_reflog, fixture.repo, REFLOG));
	entry = FUNC6(parent_reflog, 0);
	FUNC0(FUNC2(oid, &entry->oid_old) == 0);
	FUNC0(FUNC2(oid, &entry->oid_cur) == 0);

	FUNC3(head);
	FUNC11(sig);
	FUNC7(reflog);
	FUNC7(parent_reflog);
}
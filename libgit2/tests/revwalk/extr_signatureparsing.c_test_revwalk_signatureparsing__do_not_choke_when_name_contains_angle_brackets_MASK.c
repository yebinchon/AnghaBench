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
struct TYPE_4__ {int offset; scalar_t__ time; } ;
struct TYPE_5__ {TYPE_1__ when; int /*<<< orphan*/  name; int /*<<< orphan*/  email; } ;
typedef  TYPE_2__ git_signature ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _walk ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
	git_reference *ref;
	git_oid commit_oid;
	git_commit *commit;
	const git_signature *signature;

	/*
	 * The branch below points at a commit with angle brackets in the committer/author name
	 * committer <Yu V. Bin Haacked> <foo@example.com> 1323847743 +0100
	 */
	FUNC2(FUNC7(&ref, _repo, "refs/heads/haacked"));

	FUNC10(_walk, FUNC8(ref));
	FUNC2(FUNC9(&commit_oid, _walk));

	FUNC2(FUNC5(&commit, _repo, FUNC8(ref)));

	signature = FUNC3(commit);
	FUNC1("foo@example.com", signature->email);
	FUNC1("Yu V. Bin Haacked", signature->name);
	FUNC0(1323847743, (int)signature->when.time);
	FUNC0(60, signature->when.offset);

	FUNC4(commit);
	FUNC6(ref);
}
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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  committer_email ; 
 int /*<<< orphan*/  committer_name ; 
 int /*<<< orphan*/  g_repo ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  root_commit_message ; 

__attribute__((used)) static int FUNC4(
	git_oid *result,
	const git_oid *tree_id,
	const git_oid *parent_id)
{
	git_signature *author, *committer;
	const git_oid *parent_ids[1];
	int ret;

	FUNC0(FUNC3(
		&committer, committer_name, committer_email, 123456789, 60));
	FUNC0(FUNC3(
		&author, committer_name, committer_email, 987654321, 90));

	parent_ids[0] = parent_id;

	ret = FUNC1(
		result,
		g_repo,
		NULL,
		author,
		committer,
		NULL,
		root_commit_message,
		tree_id,
		1,
		parent_ids);

	FUNC2(committer);
	FUNC2(author);

	return ret;
}
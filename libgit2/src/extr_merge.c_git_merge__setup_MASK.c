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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t) ; 

int FUNC6(
	git_repository *repo,
	const git_annotated_commit *our_head,
	const git_annotated_commit *heads[],
	size_t heads_len)
{
	int error = 0;

	FUNC0 (repo && our_head && heads);

	if ((error = FUNC2(repo, FUNC1(our_head))) == 0 &&
		(error = FUNC3(repo, heads, heads_len)) == 0 &&
		(error = FUNC4(repo)) == 0) {
		error = FUNC5(repo, heads, heads_len);
	}

	return error;
}
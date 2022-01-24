#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {int /*<<< orphan*/  commit; } ;
typedef  TYPE_1__ git_annotated_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 int FUNC6 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
	git_annotated_commit **ancestor_head,
	git_repository *repo,
	const git_annotated_commit *our_head,
	const git_annotated_commit **their_heads,
	size_t their_heads_len)
{
	git_oid *oids, ancestor_oid;
	size_t i, alloc_len;
	int error = 0;

	FUNC2(repo && our_head && their_heads);

	FUNC1(&alloc_len, their_heads_len, 1);
	oids = FUNC3(alloc_len, sizeof(git_oid));
	FUNC0(oids);

	FUNC9(&oids[0], FUNC7(our_head->commit));

	for (i = 0; i < their_heads_len; i++)
		FUNC9(&oids[i + 1], FUNC5(their_heads[i]));

	if ((error = FUNC8(&ancestor_oid, repo, their_heads_len + 1, oids)) < 0)
		goto on_error;

	error = FUNC6(ancestor_head, repo, &ancestor_oid);

on_error:
	FUNC4(oids);
	return error;
}
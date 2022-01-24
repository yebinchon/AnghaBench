#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_time_t ;
struct TYPE_8__ {scalar_t__ email; scalar_t__ name; } ;
typedef  TYPE_1__ git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CL_COMMIT_EMAIL ; 
 int /*<<< orphan*/  CL_COMMIT_MSG ; 
 int /*<<< orphan*/  CL_COMMIT_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(
	git_oid *out,
	git_repository *repo,
	git_signature *sig,
	git_time_t time,
	const char *msg)
{
	git_index *index;
	git_oid commit_id, tree_id;
	git_object *parent = NULL;
	git_reference *ref = NULL;
	git_tree *tree = NULL;
	char buf[128];
	int free_sig = (sig == NULL);

	/* it is fine if looking up HEAD fails - we make this the first commit */
	FUNC12(&parent, &ref, repo, "HEAD");

	/* write the index content as a tree */
	FUNC1(FUNC11(&index, repo));
	FUNC1(FUNC5(&tree_id, index));
	FUNC1(FUNC4(index));
	FUNC3(index);

	FUNC1(FUNC17(&tree, repo, &tree_id));

	if (sig)
		FUNC0(sig->name && sig->email);
	else if (!time)
		FUNC1(FUNC15(&sig, CL_COMMIT_NAME, CL_COMMIT_EMAIL));
	else
		FUNC1(FUNC14(
			&sig, CL_COMMIT_NAME, CL_COMMIT_EMAIL, time, 0));

	if (!msg) {
		FUNC18(buf, CL_COMMIT_MSG);
		FUNC8(buf + FUNC19(CL_COMMIT_MSG),
			sizeof(buf) - FUNC19(CL_COMMIT_MSG), &tree_id);
		msg = buf;
	}

	FUNC1(FUNC2(
		&commit_id, repo, ref ? FUNC10(ref) : "HEAD",
		sig, sig, NULL, msg, tree, parent ? 1 : 0, parent));

	if (out)
		FUNC7(out, &commit_id);

	FUNC6(parent);
	FUNC9(ref);
	if (free_sig)
		FUNC13(sig);
	FUNC16(tree);
}
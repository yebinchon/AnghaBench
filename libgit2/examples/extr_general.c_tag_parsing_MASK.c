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
typedef  int /*<<< orphan*/  git_tag ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static void FUNC11(git_repository *repo)
{
	git_commit *commit;
	git_object_t type;
	git_tag *tag;
	git_oid oid;
	const char *name, *message;
	int error;

	FUNC10("\n*Tag Parsing*\n");

	/**
	 * We create an oid for the tag object if we know the SHA and look it up
	 * the same way that we would a commit (or any other object).
	 */
	FUNC3(&oid, "b25fa35b38051e4ae45d4222e795f9df2e43f1d1");

	error = FUNC5(&tag, repo, &oid);
	FUNC0(error, "looking up tag");

	/**
	 * Now that we have the tag object, we can extract the information it
	 * generally contains: the target (usually a commit object), the type of
	 * the target object (usually 'commit'), the name ('v1.0'), the tagger (a
	 * git_signature - name, email, timestamp), and the tag message.
	 */
	FUNC8((git_object **)&commit, tag);
	name = FUNC7(tag);		/* "test" */
	type = FUNC9(tag);	/* GIT_OBJECT_COMMIT (object_t enum) */
	message = FUNC6(tag);		/* "tag message\n" */
	FUNC10("Tag Name: %s\nTag Type: %s\nTag Message: %s\n",
		name, FUNC2(type), message);

	/**
	 * Free both the commit and tag after usage.
	 */
	FUNC1(commit);
	FUNC4(tag);
}
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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  oid_hex ;
struct TYPE_4__ {char* name; char* email; } ;
typedef  TYPE_1__ git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static void FUNC15(git_repository *repo)
{
	const git_signature *author, *cmtter;
	git_commit *commit, *parent;
	git_oid oid;
	char oid_hex[GIT_OID_HEXSZ+1];
	const char *message;
	unsigned int parents, p;
	int error;
	time_t time;

	FUNC14("\n*Commit Parsing*\n");

	FUNC12(&oid, "8496071c1b46c854b31185ea97743be6a8774479");

	error = FUNC6(&commit, repo, &oid);
	FUNC0(error, "looking up commit");

	/**
	 * Each of the properties of the commit object are accessible via methods,
	 * including commonly needed variations, such as `git_commit_time` which
	 * returns the author time and `git_commit_message` which gives you the
	 * commit message (as a NUL-terminated string).
	 */
	message  = FUNC7(commit);
	author   = FUNC2(commit);
	cmtter   = FUNC3(commit);
	time    = FUNC10(commit);

	/**
	 * The author and committer methods return [git_signature] structures,
	 * which give you name, email and `when`, which is a `git_time` structure,
	 * giving you a timestamp and timezone offset.
	 */
	FUNC14("Author: %s (%s)\nCommitter: %s (%s)\nDate: %s\nMessage: %s\n",
		author->name, author->email,
		cmtter->name, cmtter->email,
		FUNC1(&time), message);

	/**
	 * Commits can have zero or more parents. The first (root) commit will
	 * have no parents, most commits will have one (i.e. the commit it was
	 * based on) and merge commits will have two or more.  Commits can
	 * technically have any number, though it's rare to have more than two.
	 */
	parents  = FUNC9(commit);
	for (p = 0;p < parents;p++) {
		FUNC13(oid_hex, 0, sizeof(oid_hex));

		FUNC8(&parent, commit, p);
		FUNC11(oid_hex, FUNC5(parent));
		FUNC14("Parent: %s\n", oid_hex);
		FUNC4(parent);
	}

	FUNC4(commit);
}
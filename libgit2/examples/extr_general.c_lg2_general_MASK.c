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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(git_repository *repo, int argc, char** argv)
{
	int error;
	git_oid oid;
	char *repo_path;

	/**
	 * Initialize the library, this will set up any global state which libgit2 needs
	 * including threading and crypto
	 */
	FUNC5();

	/**
	 * ### Opening the Repository
	 *
	 * There are a couple of methods for opening a repository, this being the
	 * simplest.  There are also [methods][me] for specifying the index file
	 * and work tree locations, here we assume they are in the normal places.
	 *
	 * (Try running this program against tests/resources/testrepo.git.)
	 *
	 * [me]: http://libgit2.github.com/libgit2/#HEAD/group/repository
	 */
	repo_path = (argc > 1) ? argv[1] : "/opt/libgit2-test/.git";

	error = FUNC7(&repo, repo_path);
	FUNC1(error, "opening repository");

	FUNC10(&oid);
	FUNC9(repo, &oid);
	FUNC3(repo);
	FUNC2(repo);
	FUNC13(repo);
	FUNC14(repo);
	FUNC0(repo);
	FUNC12(repo);
	FUNC8(repo);
	FUNC11(repo);
	FUNC4(repo_path, repo);

	/**
	 * Finally, when you're done with the repository, you can free it as well.
	 */
	FUNC6(repo);

	return 0;
}
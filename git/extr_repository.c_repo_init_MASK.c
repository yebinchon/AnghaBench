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
struct repository_format {int /*<<< orphan*/  hash_algo; } ;
struct repository {int /*<<< orphan*/  commondir; int /*<<< orphan*/  parsed_objects; int /*<<< orphan*/  objects; } ;

/* Variables and functions */
 struct repository_format REPOSITORY_FORMAT_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct repository_format*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct repository_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct repository*) ; 
 scalar_t__ FUNC6 (struct repository*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct repository*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct repository*,char const*) ; 

int FUNC9(struct repository *repo,
	      const char *gitdir,
	      const char *worktree)
{
	struct repository_format format = REPOSITORY_FORMAT_INIT;
	FUNC1(repo, 0, sizeof(*repo));

	repo->objects = FUNC3();
	repo->parsed_objects = FUNC2();

	if (FUNC6(repo, gitdir))
		goto error;

	if (FUNC4(&format, repo->commondir))
		goto error;

	FUNC7(repo, format.hash_algo);

	if (worktree)
		FUNC8(repo, worktree);

	FUNC0(&format);
	return 0;

error:
	FUNC5(repo);
	return -1;
}
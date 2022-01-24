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
typedef  scalar_t__ git_filemode_t ;

/* Variables and functions */
 scalar_t__ GIT_FILEMODE_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(git_repository *repo, const char *filename, const git_oid *id, git_filemode_t filemode)
{
	if (!FUNC5(filemode))
		return FUNC3("failed to insert entry: invalid filemode for file", filename);

	if (!FUNC4(repo, filename))
		return FUNC3("failed to insert entry: invalid name for a tree entry", filename);

	if (FUNC1(id))
		return FUNC3("failed to insert entry: invalid null OID", filename);

	if (filemode != GIT_FILEMODE_COMMIT &&
	    !FUNC0(repo, id, FUNC2(filemode)))
		return FUNC3("failed to insert entry: invalid object specified", filename);

	return 0;
}
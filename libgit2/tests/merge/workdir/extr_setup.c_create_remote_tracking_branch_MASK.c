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
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 char* GIT_REFS_REMOTES_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static int FUNC7(const char *branch_name, const char *oid_str)
{
	int error = 0;

	git_buf remotes_path = GIT_BUF_INIT,
		origin_path = GIT_BUF_INIT,
		filename = GIT_BUF_INIT,
		data = GIT_BUF_INIT;

	if ((error = FUNC3(&remotes_path, FUNC5(repo))) < 0 ||
		(error = FUNC3(&remotes_path, GIT_REFS_REMOTES_DIR)) < 0)
		goto done;

	if (!FUNC4(FUNC1(&remotes_path)) &&
		(error = FUNC6(FUNC1(&remotes_path), 0777)) < 0)
		goto done;

	if ((error = FUNC3(&origin_path, FUNC1(&remotes_path))) < 0 ||
		(error = FUNC3(&origin_path, "origin")) < 0)
		goto done;

	if (!FUNC4(FUNC1(&origin_path)) &&
		(error = FUNC6(FUNC1(&origin_path), 0777)) < 0)
		goto done;

	if ((error = FUNC3(&filename, FUNC1(&origin_path))) < 0 ||
		(error = FUNC3(&filename, "/")) < 0 ||
		(error = FUNC3(&filename, branch_name)) < 0 ||
		(error = FUNC3(&data, oid_str)) < 0 ||
		(error = FUNC3(&data, "\n")) < 0)
		goto done;

	FUNC0(FUNC1(&filename), FUNC1(&data));

done:
	FUNC2(&remotes_path);
	FUNC2(&origin_path);
	FUNC2(&filename);
	FUNC2(&data);

	return error;
}
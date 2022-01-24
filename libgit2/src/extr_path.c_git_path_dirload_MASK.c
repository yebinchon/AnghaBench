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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_path_diriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  GIT_PATH_DIRITER_INIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*) ; 

int FUNC8(
	git_vector *contents,
	const char *path,
	size_t prefix_len,
	uint32_t flags)
{
	git_path_diriter iter = GIT_PATH_DIRITER_INIT;
	const char *name;
	size_t name_len;
	char *dup;
	int error;

	FUNC1(contents && path);

	if ((error = FUNC5(&iter, path, flags)) < 0)
		return error;

	while ((error = FUNC6(&iter)) == 0) {
		if ((error = FUNC4(&name, &name_len, &iter)) < 0)
			break;

		FUNC1(name_len > prefix_len);

		dup = FUNC2(name + prefix_len, name_len - prefix_len);
		FUNC0(dup);

		if ((error = FUNC7(contents, dup)) < 0)
			break;
	}

	if (error == GIT_ITEROVER)
		error = 0;

	FUNC3(&iter);
	return error;
}
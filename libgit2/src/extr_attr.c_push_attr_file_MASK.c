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
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_attr_session ;
typedef  int /*<<< orphan*/  git_attr_file_source ;
typedef  int /*<<< orphan*/  git_attr_file ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  git_attr_file__parse_buffer ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
	git_repository *repo,
	git_attr_session *attr_session,
	git_vector *list,
	git_attr_file_source source,
	const char *base,
	const char *filename,
	bool allow_macros)
{
	int error = 0;
	git_attr_file *file = NULL;

	error = FUNC0(&file, repo, attr_session,
		source, base, filename, git_attr_file__parse_buffer, allow_macros);

	if (error < 0)
		return error;

	if (file != NULL) {
		if ((error = FUNC2(list, file)) < 0)
			FUNC1(file);
	}

	return error;
}
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
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_7__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_SYMREF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char const*) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(
	git_reference **out,
	git_repository *repo,
	const char *path)
{
	git_buf reference = GIT_BUF_INIT;
	char *name = NULL;
	int error;

	if ((error = FUNC5(&reference, path)) < 0)
		goto out;
	FUNC4(&reference);

	if (FUNC1(reference.ptr, GIT_SYMREF, FUNC9(GIT_SYMREF)) == 0) {
		FUNC2(&reference, reference.ptr + FUNC9(GIT_SYMREF));

		name = FUNC6(path);

		if ((*out = FUNC7(name, reference.ptr)) == NULL) {
			error = -1;
			goto out;
		}
	} else {
		if ((error = FUNC8(out, repo, reference.ptr)) < 0)
			goto out;
	}

out:
	FUNC0(name);
	FUNC3(&reference);

	return error;
}
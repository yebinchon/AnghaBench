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
 int GIT_EBUFS ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,unsigned int) ; 

int FUNC5(
	char *buffer_out,
	size_t buffer_size,
	const char *name,
	unsigned int flags)
{
	git_buf buf = GIT_BUF_INIT;
	int error;

	if ((error = FUNC4(&buf, name, flags)) < 0)
		goto cleanup;

	if (FUNC2(&buf) > buffer_size - 1) {
		FUNC3(
		GIT_ERROR_REFERENCE,
		"the provided buffer is too short to hold the normalization of '%s'", name);
		error = GIT_EBUFS;
		goto cleanup;
	}

	FUNC0(buffer_out, buffer_size, &buf);

	error = 0;

cleanup:
	FUNC1(&buf);
	return error;
}
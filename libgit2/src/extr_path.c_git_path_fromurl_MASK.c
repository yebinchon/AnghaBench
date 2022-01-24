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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*) ; 

int FUNC5(git_buf *local_path_out, const char *file_url)
{
	int offset;

	FUNC0(local_path_out && file_url);

	if ((offset = FUNC4(file_url)) < 0 ||
		file_url[offset] == '\0' || file_url[offset] == '/')
		return FUNC1(file_url);

#ifndef GIT_WIN32
	offset--;	/* A *nix absolute path starts with a forward slash */
#endif

	FUNC3(local_path_out);
	return FUNC2(local_path_out, file_url + offset);
}
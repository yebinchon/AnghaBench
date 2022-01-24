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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*,size_t) ; 

__attribute__((used)) static int FUNC6(
	git_oid *id, git_odb *odb, const char *path, size_t link_size)
{
	char *link_data;
	ssize_t read_len;
	int error;

	link_data = FUNC2(link_size);
	FUNC0(link_data);

	read_len = FUNC5(path, link_data, link_size);
	if (read_len != (ssize_t)link_size) {
		FUNC3(GIT_ERROR_OS, "failed to create blob: cannot read symlink '%s'", path);
		FUNC1(link_data);
		return -1;
	}

	error = FUNC4(id, odb, (void *)link_data, link_size, GIT_OBJECT_BLOB);
	FUNC1(link_data);
	return error;
}
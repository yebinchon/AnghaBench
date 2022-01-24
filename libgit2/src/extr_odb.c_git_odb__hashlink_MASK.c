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
struct stat {int /*<<< orphan*/  st_mode; scalar_t__ st_size; } ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int,int) ; 
 int /*<<< orphan*/  GIT_ERROR_FILESYSTEM ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char const*,char*,int) ; 

int FUNC13(git_oid *out, const char *path)
{
	struct stat st;
	int size;
	int result;

	if (FUNC10(path, &st) < 0)
		return -1;

	if (!FUNC4(st.st_size) || (int)st.st_size < 0) {
		FUNC6(GIT_ERROR_FILESYSTEM, "file size overflow for 32-bit systems");
		return -1;
	}

	size = (int)st.st_size;

	if (FUNC2(st.st_mode)) {
		char *link_data;
		int read_len;
		size_t alloc_size;

		FUNC1(&alloc_size, size, 1);
		link_data = FUNC5(alloc_size);
		FUNC0(link_data);

		read_len = FUNC12(path, link_data, size);
		link_data[size] = '\0';
		if (read_len != size) {
			FUNC6(GIT_ERROR_OS, "failed to read symlink data for '%s'", path);
			FUNC3(link_data);
			return -1;
		}

		result = FUNC9(out, link_data, size, GIT_OBJECT_BLOB);
		FUNC3(link_data);
	} else {
		int fd = FUNC7(path);
		if (fd < 0)
			return -1;
		result = FUNC8(out, fd, size, GIT_OBJECT_BLOB);
		FUNC11(fd);
	}

	return result;
}
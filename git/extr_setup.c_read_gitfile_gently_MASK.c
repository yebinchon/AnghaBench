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
struct stat {int const st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int READ_GITFILE_ERR_INVALID_FORMAT ; 
 int READ_GITFILE_ERR_NOT_A_FILE ; 
 int READ_GITFILE_ERR_NOT_A_REPO ; 
 int READ_GITFILE_ERR_NO_PATH ; 
 int READ_GITFILE_ERR_OPEN_FAILED ; 
 int READ_GITFILE_ERR_READ_FAILED ; 
 int READ_GITFILE_ERR_STAT_FAILED ; 
 int READ_GITFILE_ERR_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char const*,char*) ; 
 int FUNC7 (int,char*,int const) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char const*,struct stat*) ; 
 char* FUNC11 (char const*,char) ; 
 char* FUNC12 (int const) ; 
 char* FUNC13 (char*,int,char const*,int,char*) ; 

const char *FUNC14(const char *path, int *return_error_code)
{
	const int max_file_size = 1 << 20;  /* 1MB */
	int error_code = 0;
	char *buf = NULL;
	char *dir = NULL;
	const char *slash;
	struct stat st;
	int fd;
	ssize_t len;

	if (FUNC10(path, &st)) {
		/* NEEDSWORK: discern between ENOENT vs other errors */
		error_code = READ_GITFILE_ERR_STAT_FAILED;
		goto cleanup_return;
	}
	if (!FUNC0(st.st_mode)) {
		error_code = READ_GITFILE_ERR_NOT_A_FILE;
		goto cleanup_return;
	}
	if (st.st_size > max_file_size) {
		error_code = READ_GITFILE_ERR_TOO_LARGE;
		goto cleanup_return;
	}
	fd = FUNC5(path, O_RDONLY);
	if (fd < 0) {
		error_code = READ_GITFILE_ERR_OPEN_FAILED;
		goto cleanup_return;
	}
	buf = FUNC12(st.st_size);
	len = FUNC7(fd, buf, st.st_size);
	FUNC1(fd);
	if (len != st.st_size) {
		error_code = READ_GITFILE_ERR_READ_FAILED;
		goto cleanup_return;
	}
	if (!FUNC9(buf, "gitdir: ")) {
		error_code = READ_GITFILE_ERR_INVALID_FORMAT;
		goto cleanup_return;
	}
	while (buf[len - 1] == '\n' || buf[len - 1] == '\r')
		len--;
	if (len < 9) {
		error_code = READ_GITFILE_ERR_NO_PATH;
		goto cleanup_return;
	}
	buf[len] = '\0';
	dir = buf + 8;

	if (!FUNC3(dir) && (slash = FUNC11(path, '/'))) {
		size_t pathlen = slash+1 - path;
		dir = FUNC13("%.*s%.*s", (int)pathlen, path,
			      (int)(len - 8), buf + 8);
		FUNC2(buf);
		buf = dir;
	}
	if (!FUNC4(dir)) {
		error_code = READ_GITFILE_ERR_NOT_A_REPO;
		goto cleanup_return;
	}
	path = FUNC8(dir);

cleanup_return:
	if (return_error_code)
		*return_error_code = error_code;
	else if (error_code)
		FUNC6(error_code, path, dir);

	FUNC2(buf);
	return error_code ? NULL : path;
}
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
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_odb_stream ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FILEIO_BUFSIZE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,char*,int) ; 

__attribute__((used)) static int FUNC8(
	git_oid *id, git_odb *odb, const char *path, git_off_t file_size)
{
	int fd, error;
	char buffer[FILEIO_BUFSIZE];
	git_odb_stream *stream = NULL;
	ssize_t read_len = -1;
	git_off_t written = 0;

	if ((error = FUNC2(
			&stream, odb, file_size, GIT_OBJECT_BLOB)) < 0)
		return error;

	if ((fd = FUNC1(path)) < 0) {
		FUNC4(stream);
		return -1;
	}

	while (!error && (read_len = FUNC7(fd, buffer, sizeof(buffer))) > 0) {
		error = FUNC5(stream, buffer, read_len);
		written += read_len;
	}

	FUNC6(fd);

	if (written != file_size || read_len < 0) {
		FUNC0(GIT_ERROR_OS, "failed to read file into stream");
		error = -1;
	}

	if (!error)
		error = FUNC3(id, stream);

	FUNC4(stream);
	return error;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_3__ {scalar_t__ fd; int fd_is_open; int /*<<< orphan*/  path_lock; int /*<<< orphan*/  path_original; int /*<<< orphan*/  digest; scalar_t__ compute_digest; } ;
typedef  TYPE_1__ git_filebuf ;
typedef  scalar_t__ git_file ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FILEIO_BUFSIZE ; 
 int GIT_ELOCKED ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_FILEBUF_APPEND ; 
 int GIT_FILEBUF_CREATE_LEADING_DIRS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,char*,int) ; 
 int FUNC9 (int,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(git_filebuf *file, int flags, mode_t mode)
{
	if (FUNC5(file->path_lock) == true) {
		FUNC0(); /* actual OS error code just confuses */
		FUNC1(GIT_ERROR_OS,
			"failed to lock file '%s' for writing", file->path_lock);
		return GIT_ELOCKED;
	}

	/* create path to the file buffer is required */
	if (flags & GIT_FILEBUF_CREATE_LEADING_DIRS) {
		/* XXX: Should dirmode here be configurable? Or is 0777 always fine? */
		file->fd = FUNC3(file->path_lock, 0777, mode);
	} else {
		file->fd = FUNC2(file->path_lock, mode);
	}

	if (file->fd < 0)
		return file->fd;

	file->fd_is_open = true;

	if ((flags & GIT_FILEBUF_APPEND) && FUNC5(file->path_original) == true) {
		git_file source;
		char buffer[FILEIO_BUFSIZE];
		ssize_t read_bytes;
		int error = 0;

		source = FUNC7(file->path_original, O_RDONLY);
		if (source < 0) {
			FUNC1(GIT_ERROR_OS,
				"failed to open file '%s' for reading",
				file->path_original);
			return -1;
		}

		while ((read_bytes = FUNC8(source, buffer, sizeof(buffer))) > 0) {
			if ((error = FUNC9(file->fd, buffer, read_bytes)) < 0)
				break;
			if (file->compute_digest)
				FUNC4(&file->digest, buffer, read_bytes);
		}

		FUNC6(source);

		if (read_bytes < 0) {
			FUNC1(GIT_ERROR_OS, "failed to read file '%s'", file->path_original);
			return -1;
		} else if (error < 0) {
			FUNC1(GIT_ERROR_OS, "failed to write file '%s'", file->path_lock);
			return -1;
		}
	}

	return 0;
}
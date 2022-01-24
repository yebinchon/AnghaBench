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
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
typedef  int /*<<< orphan*/  git_file ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int FILEIO_BUFSIZE ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (size_t*,char*,int,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC8(git_oid *out, git_file fd, size_t size, git_object_t type)
{
	size_t hdr_len;
	char hdr[64], buffer[FILEIO_BUFSIZE];
	git_hash_ctx ctx;
	ssize_t read_len = 0;
	int error = 0;

	if (!FUNC5(type)) {
		FUNC0(GIT_ERROR_INVALID, "invalid object type for hash");
		return -1;
	}

	if ((error = FUNC2(&ctx)) < 0)
		return error;

	if ((error = FUNC6(&hdr_len, hdr,
		sizeof(hdr), size, type)) < 0)
		goto done;

	if ((error = FUNC4(&ctx, hdr, hdr_len)) < 0)
		goto done;

	while (size > 0 && (read_len = FUNC7(fd, buffer, sizeof(buffer))) > 0) {
		if ((error = FUNC4(&ctx, buffer, read_len)) < 0)
			goto done;

		size -= read_len;
	}

	/* If p_read returned an error code, the read obviously failed.
	 * If size is not zero, the file was truncated after we originally
	 * stat'd it, so we consider this a read failure too */
	if (read_len < 0 || size > 0) {
		FUNC0(GIT_ERROR_OS, "error reading file for hashing");
		error = -1;

		goto done;
	}

	error = FUNC3(out, &ctx);

done:
	FUNC1(&ctx);
	return error;
}
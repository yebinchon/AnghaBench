#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_12__ {int do_not_buffer; int do_fsync; size_t buf_size; int fd; int compute_digest; int fd_is_open; int created_lock; int /*<<< orphan*/ * path_original; int /*<<< orphan*/ * path_lock; int /*<<< orphan*/ * write; int /*<<< orphan*/  flush_mode; int /*<<< orphan*/ * z_buf; int /*<<< orphan*/  zs; int /*<<< orphan*/  digest; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  last_error; scalar_t__ buf_pos; } ;
typedef  TYPE_1__ git_filebuf ;
struct TYPE_13__ {size_t size; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  BUFERR_OK ; 
 TYPE_2__ GIT_BUF_INIT ; 
 int GIT_EDIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,size_t) ; 
 int /*<<< orphan*/  GIT_ERROR_FILESYSTEM ; 
 int /*<<< orphan*/  GIT_ERROR_ZLIB ; 
 int GIT_FILEBUF_DEFLATE_SHIFT ; 
 int GIT_FILEBUF_DO_NOT_BUFFER ; 
 int GIT_FILEBUF_FSYNC ; 
 int GIT_FILEBUF_HASH_CONTENTS ; 
 int GIT_FILEBUF_TEMPORARY ; 
 int /*<<< orphan*/ * GIT_FILELOCK_EXTENSION ; 
 size_t GIT_FILELOCK_EXTLENGTH ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (size_t) ; 
 void* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_2__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int) ; 
 int FUNC15 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  write_deflate ; 
 int /*<<< orphan*/  write_normal ; 

int FUNC16(git_filebuf *file, const char *path, int flags, mode_t mode, size_t size)
{
	int compression, error = -1;
	size_t path_len, alloc_len;

	/* opening an already open buffer is a programming error;
	 * assert that this never happens instead of returning
	 * an error code */
	FUNC2(file && path && file->buffer == NULL);

	FUNC14(file, 0x0, sizeof(git_filebuf));

	if (flags & GIT_FILEBUF_DO_NOT_BUFFER)
		file->do_not_buffer = true;

	if (flags & GIT_FILEBUF_FSYNC)
		file->do_fsync = true;

	file->buf_size = size;
	file->buf_pos = 0;
	file->fd = -1;
	file->last_error = BUFERR_OK;

	/* Allocate the main cache buffer */
	if (!file->do_not_buffer) {
		file->buffer = FUNC4(file->buf_size);
		FUNC0(file->buffer);
	}

	/* If we are hashing on-write, allocate a new hash context */
	if (flags & GIT_FILEBUF_HASH_CONTENTS) {
		file->compute_digest = 1;

		if (FUNC10(&file->digest) < 0)
			goto cleanup;
	}

	compression = flags >> GIT_FILEBUF_DEFLATE_SHIFT;

	/* If we are deflating on-write, */
	if (compression != 0) {
		/* Initialize the ZLib stream */
		if (FUNC3(&file->zs, compression) != Z_OK) {
			FUNC7(GIT_ERROR_ZLIB, "failed to initialize zlib");
			goto cleanup;
		}

		/* Allocate the Zlib cache buffer */
		file->z_buf = FUNC4(file->buf_size);
		FUNC0(file->z_buf);

		/* Never flush */
		file->flush_mode = Z_NO_FLUSH;
		file->write = &write_deflate;
	} else {
		file->write = &write_normal;
	}

	/* If we are writing to a temp file */
	if (flags & GIT_FILEBUF_TEMPORARY) {
		git_buf tmp_path = GIT_BUF_INIT;

		/* Open the file as temporary for locking */
		file->fd = FUNC9(&tmp_path, path, mode);

		if (file->fd < 0) {
			FUNC6(&tmp_path);
			goto cleanup;
		}
		file->fd_is_open = true;
		file->created_lock = true;

		/* No original path */
		file->path_original = NULL;
		file->path_lock = FUNC5(&tmp_path);
		FUNC0(file->path_lock);
	} else {
		git_buf resolved_path = GIT_BUF_INIT;

		if ((error = FUNC15(&resolved_path, path)) < 0)
			goto cleanup;

		/* Save the original path of the file */
		path_len = resolved_path.size;
		file->path_original = FUNC5(&resolved_path);

		/* create the locking path by appending ".lock" to the original */
		FUNC1(&alloc_len, path_len, GIT_FILELOCK_EXTLENGTH);
		file->path_lock = FUNC4(alloc_len);
		FUNC0(file->path_lock);

		FUNC13(file->path_lock, file->path_original, path_len);
		FUNC13(file->path_lock + path_len, GIT_FILELOCK_EXTENSION, GIT_FILELOCK_EXTLENGTH);

		if (FUNC11(file->path_original)) {
			FUNC7(GIT_ERROR_FILESYSTEM, "path '%s' is a directory", file->path_original);
			error = GIT_EDIRECTORY;
			goto cleanup;
		}

		/* open the file for locking */
		if ((error = FUNC12(file, flags, mode)) < 0)
			goto cleanup;

		file->created_lock = true;
	}

	return 0;

cleanup:
	FUNC8(file);
	return error;
}
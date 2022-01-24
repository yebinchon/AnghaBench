#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  object_file_mode; int /*<<< orphan*/  objects_dir; } ;
typedef  TYPE_1__ loose_backend ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_filebuf ;
struct TYPE_12__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEBUF_INIT ; 
 int MAX_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC7 (size_t*,char*,int,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(git_odb_backend *_backend, const git_oid *oid, const void *data, size_t len, git_object_t type)
{
	int error = 0;
	git_buf final_path = GIT_BUF_INIT;
	char header[MAX_HEADER_LEN];
	size_t header_len;
	git_filebuf fbuf = GIT_FILEBUF_INIT;
	loose_backend *backend;

	backend = (loose_backend *)_backend;

	/* prepare the header for the file */
	if ((error = FUNC7(&header_len,
		header, sizeof(header), len, type)) < 0)
		goto cleanup;

	if (FUNC2(&final_path, backend->objects_dir, "tmp_object") < 0 ||
		FUNC5(&fbuf, final_path.ptr, FUNC0(backend),
			backend->object_file_mode) < 0)
	{
		error = -1;
		goto cleanup;
	}

	FUNC6(&fbuf, header, header_len);
	FUNC6(&fbuf, data, len);

	if (FUNC8(&final_path, backend, oid) < 0 ||
		FUNC9(&final_path, backend) < 0 ||
		FUNC4(&fbuf, final_path.ptr) < 0)
		error = -1;

cleanup:
	if (error < 0)
		FUNC3(&fbuf);
	FUNC1(&final_path);
	return error;
}
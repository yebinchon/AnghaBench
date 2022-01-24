#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_writestream ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;
struct TYPE_12__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  close; int /*<<< orphan*/  write; } ;
struct TYPE_14__ {int /*<<< orphan*/  fbuf; TYPE_1__ parent; int /*<<< orphan*/ * repo; struct TYPE_14__* hintpath; } ;
typedef  TYPE_3__ blob_writestream ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  GIT_FILEBUF_TEMPORARY ; 
 int /*<<< orphan*/  GIT_REPOSITORY_ITEM_OBJECTS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  blob_writestream_close ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blob_writestream_write ; 
 TYPE_3__* FUNC3 (int,int) ; 
 TYPE_3__* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC10(git_writestream **out, git_repository *repo, const char *hintpath)
{
	int error;
	git_buf path = GIT_BUF_INIT;
	blob_writestream *stream;

	FUNC1(out && repo);

	stream = FUNC3(1, sizeof(blob_writestream));
	FUNC0(stream);

	if (hintpath) {
		stream->hintpath = FUNC4(hintpath);
		FUNC0(stream->hintpath);
	}

	stream->repo = repo;
	stream->parent.write = blob_writestream_write;
	stream->parent.close = blob_writestream_close;
	stream->parent.free  = blob_writestream_free;

	if ((error = FUNC9(&path, repo, GIT_REPOSITORY_ITEM_OBJECTS)) < 0
		|| (error = FUNC7(&path, path.ptr, "streamed")) < 0)
		goto cleanup;

	if ((error = FUNC8(&stream->fbuf, FUNC5(&path), GIT_FILEBUF_TEMPORARY,
					       0666, 2 * 1024 * 1024)) < 0)
		goto cleanup;

	*out = (git_writestream *) stream;

cleanup:
	if (error < 0)
		FUNC2((git_writestream *) stream);

	FUNC6(&path);
	return error;
}
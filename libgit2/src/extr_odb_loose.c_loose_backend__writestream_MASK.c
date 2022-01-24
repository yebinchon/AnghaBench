#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ (* write ) (int /*<<< orphan*/ *,char*,size_t) ;int /*<<< orphan*/  mode; int /*<<< orphan*/ * free; int /*<<< orphan*/ * finalize_write; int /*<<< orphan*/ * read; int /*<<< orphan*/ * backend; } ;
struct TYPE_13__ {int /*<<< orphan*/  fbuf; TYPE_1__ stream; } ;
typedef  TYPE_2__ loose_writestream ;
struct TYPE_14__ {int /*<<< orphan*/  object_file_mode; int /*<<< orphan*/  objects_dir; } ;
typedef  TYPE_3__ loose_backend ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  git_off_t ;
typedef  int /*<<< orphan*/  git_odb_stream ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;
struct TYPE_15__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  GIT_STREAM_WRONLY ; 
 int MAX_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (size_t*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loose_backend__writestream_finalize ; 
 int /*<<< orphan*/  loose_backend__writestream_free ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static int FUNC12(git_odb_stream **stream_out, git_odb_backend *_backend, git_off_t length, git_object_t type)
{
	loose_backend *backend;
	loose_writestream *stream = NULL;
	char hdr[MAX_HEADER_LEN];
	git_buf tmp_path = GIT_BUF_INIT;
	size_t hdrlen;
	int error;

	FUNC1(_backend && length >= 0);

	backend = (loose_backend *)_backend;
	*stream_out = NULL;

	if ((error = FUNC9(&hdrlen,
		hdr, sizeof(hdr), length, type)) < 0)
		return error;

	stream = FUNC3(1, sizeof(loose_writestream));
	FUNC0(stream);

	stream->stream.backend = _backend;
	stream->stream.read = NULL; /* read only */
	stream->stream.write = &loose_backend__writestream_write;
	stream->stream.finalize_write = &loose_backend__writestream_finalize;
	stream->stream.free = &loose_backend__writestream_free;
	stream->stream.mode = GIT_STREAM_WRONLY;

	if (FUNC6(&tmp_path, backend->objects_dir, "tmp_object") < 0 ||
		FUNC8(&stream->fbuf, tmp_path.ptr, FUNC2(backend),
			backend->object_file_mode) < 0 ||
		stream->stream.write((git_odb_stream *)stream, hdr, hdrlen) < 0)
	{
		FUNC7(&stream->fbuf);
		FUNC4(stream);
		stream = NULL;
	}
	FUNC5(&tmp_path);
	*stream_out = (git_odb_stream *)stream;

	return !stream ? -1 : 0;
}
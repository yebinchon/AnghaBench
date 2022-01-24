#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_off_t ;
typedef  int /*<<< orphan*/  git_odb_stream ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_object_t ;
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/ * free; int /*<<< orphan*/ * finalize_write; int /*<<< orphan*/ * write; int /*<<< orphan*/ * read; int /*<<< orphan*/ * backend; } ;
struct TYPE_7__ {size_t size; TYPE_1__ stream; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ fake_wstream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GIT_STREAM_WRONLY ; 
 int /*<<< orphan*/  fake_wstream__free ; 
 int /*<<< orphan*/  fake_wstream__fwrite ; 
 int /*<<< orphan*/  fake_wstream__write ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 

__attribute__((used)) static int FUNC5(git_odb_stream **stream_p, git_odb_backend *backend, git_off_t size, git_object_t type)
{
	fake_wstream *stream;
	size_t blobsize;

	FUNC1(size);
	blobsize = (size_t)size;

	stream = FUNC2(1, sizeof(fake_wstream));
	FUNC0(stream);

	stream->size = blobsize;
	stream->type = type;
	stream->buffer = FUNC4(blobsize);
	if (stream->buffer == NULL) {
		FUNC3(stream);
		return -1;
	}

	stream->stream.backend = backend;
	stream->stream.read = NULL; /* read only */
	stream->stream.write = &fake_wstream__write;
	stream->stream.finalize_write = &fake_wstream__fwrite;
	stream->stream.free = &fake_wstream__free;
	stream->stream.mode = GIT_STREAM_WRONLY;

	*stream_p = (git_odb_stream *)stream;
	return 0;
}
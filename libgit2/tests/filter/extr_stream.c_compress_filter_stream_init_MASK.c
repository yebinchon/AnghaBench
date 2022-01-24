#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  free; int /*<<< orphan*/  close; int /*<<< orphan*/  write; } ;
struct compress_stream {int /*<<< orphan*/  mode; int /*<<< orphan*/ * next; TYPE_1__ parent; } ;
typedef  int /*<<< orphan*/  git_writestream ;
typedef  int /*<<< orphan*/  git_filter_source ;
typedef  void* git_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (struct compress_stream*) ; 
 int /*<<< orphan*/  compress_stream_close ; 
 int /*<<< orphan*/  compress_stream_free ; 
 int /*<<< orphan*/  compress_stream_write ; 
 struct compress_stream* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(
	git_writestream **out,
	git_filter *self,
	void **payload,
	const git_filter_source *src,
	git_writestream *next)
{
	struct compress_stream *stream = FUNC2(1, sizeof(struct compress_stream));
	FUNC1(stream);

	FUNC0(self);
	FUNC0(payload);

	stream->parent.write = compress_stream_write;
	stream->parent.close = compress_stream_close;
	stream->parent.free = compress_stream_free;
	stream->next = next;
	stream->mode = FUNC3(src);

	*out = (git_writestream *)stream;
	return 0;
}
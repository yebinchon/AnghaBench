#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_5__ {unsigned int avail_out; unsigned char* next_in; void* next_out; int /*<<< orphan*/  avail_in; } ;
struct TYPE_4__ {int done; TYPE_2__ zstream; int /*<<< orphan*/  curpos; int /*<<< orphan*/  mw; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ git_packfile_stream ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int /*<<< orphan*/  GIT_ERROR_ZLIB ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  Z_SYNC_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ssize_t FUNC4(git_packfile_stream *obj, void *buffer, size_t len)
{
	unsigned char *in;
	size_t written;
	int st;

	if (obj->done)
		return 0;

	in = FUNC3(obj->p, &obj->mw, obj->curpos, &obj->zstream.avail_in);
	if (in == NULL)
		return GIT_EBUFS;

	obj->zstream.next_out = buffer;
	obj->zstream.avail_out = (unsigned int)len;
	obj->zstream.next_in = in;

	st = FUNC2(&obj->zstream, Z_SYNC_FLUSH);
	FUNC1(&obj->mw);

	obj->curpos += obj->zstream.next_in - in;
	written = len - obj->zstream.avail_out;

	if (st != Z_OK && st != Z_STREAM_END) {
		FUNC0(GIT_ERROR_ZLIB, "error reading from the zlib stream");
		return -1;
	}

	if (st == Z_STREAM_END)
		obj->done = 1;


	/* If we didn't write anything out but we're not done, we need more data */
	if (!written && st != Z_STREAM_END)
		return GIT_EBUFS;

	return written;

}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned char* next_out; unsigned char* next_in; size_t total_out; scalar_t__ avail_out; int /*<<< orphan*/  avail_in; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  scalar_t__ uInt ;
struct git_pack_file {int dummy; } ;
typedef  int /*<<< orphan*/  stream ;
struct TYPE_9__ {size_t len; unsigned char* data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ git_rawobj ;
typedef  int /*<<< orphan*/  git_off_t ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_mwindow ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_ZLIB ; 
 int Z_BUF_ERROR ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 unsigned char* FUNC2 (int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 unsigned char* FUNC10 (struct git_pack_file*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  use_git_alloc ; 
 int /*<<< orphan*/  use_git_free ; 

__attribute__((used)) static int FUNC11(
	git_rawobj *obj,
	struct git_pack_file *p,
	git_mwindow **w_curs,
	git_off_t *curpos,
	size_t size,
	git_object_t type)
{
	size_t buf_size;
	int st;
	z_stream stream;
	unsigned char *buffer, *in;

	FUNC1(&buf_size, size, 1);
	buffer = FUNC2(1, buf_size);
	FUNC0(buffer);

	FUNC9(&stream, 0, sizeof(stream));
	stream.next_out = buffer;
	stream.avail_out = (uInt)buf_size;
	stream.zalloc = use_git_alloc;
	stream.zfree = use_git_free;

	st = FUNC8(&stream);
	if (st != Z_OK) {
		FUNC3(buffer);
		FUNC4(GIT_ERROR_ZLIB, "failed to init zlib stream on unpack");

		return -1;
	}

	do {
		in = FUNC10(p, w_curs, *curpos, &stream.avail_in);
		stream.next_in = in;
		st = FUNC6(&stream, Z_FINISH);
		FUNC5(w_curs);

		if (!stream.avail_out)
			break; /* the payload is larger than it should be */

		if (st == Z_BUF_ERROR && in == NULL) {
			FUNC7(&stream);
			FUNC3(buffer);
			return GIT_EBUFS;
		}

		*curpos += stream.next_in - in;
	} while (st == Z_OK || st == Z_BUF_ERROR);

	FUNC7(&stream);

	if ((st != Z_STREAM_END) || stream.total_out != size) {
		FUNC3(buffer);
		FUNC4(GIT_ERROR_ZLIB, "error inflating zlib stream");
		return -1;
	}

	obj->type = type;
	obj->len = size;
	obj->data = buffer;
	return 0;
}
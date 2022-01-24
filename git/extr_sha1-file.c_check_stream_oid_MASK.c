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
struct object_id {int /*<<< orphan*/  hash; } ;
struct TYPE_6__ {int total_out; int avail_out; unsigned char* next_out; scalar_t__ avail_in; } ;
typedef  TYPE_1__ git_zstream ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int /*<<< orphan*/  (* final_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,unsigned char*,int) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int Z_BUF_ERROR ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC5 (struct object_id const*,struct object_id*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* the_hash_algo ; 

__attribute__((used)) static int FUNC11(git_zstream *stream,
			    const char *hdr,
			    unsigned long size,
			    const char *path,
			    const struct object_id *expected_oid)
{
	git_hash_ctx c;
	struct object_id real_oid;
	unsigned char buf[4096];
	unsigned long total_read;
	int status = Z_OK;

	the_hash_algo->init_fn(&c);
	the_hash_algo->update_fn(&c, hdr, stream->total_out);

	/*
	 * We already read some bytes into hdr, but the ones up to the NUL
	 * do not count against the object's content size.
	 */
	total_read = stream->total_out - FUNC6(hdr) - 1;

	/*
	 * This size comparison must be "<=" to read the final zlib packets;
	 * see the comment in unpack_loose_rest for details.
	 */
	while (total_read <= size &&
	       (status == Z_OK ||
		(status == Z_BUF_ERROR && !stream->avail_out))) {
		stream->next_out = buf;
		stream->avail_out = sizeof(buf);
		if (size - total_read < stream->avail_out)
			stream->avail_out = size - total_read;
		status = FUNC2(stream, Z_FINISH);
		the_hash_algo->update_fn(&c, buf, stream->next_out - buf);
		total_read += stream->next_out - buf;
	}
	FUNC3(stream);

	if (status != Z_STREAM_END) {
		FUNC1(FUNC0("corrupt loose object '%s'"), FUNC4(expected_oid));
		return -1;
	}
	if (stream->avail_in) {
		FUNC1(FUNC0("garbage at end of loose object '%s'"),
		      FUNC4(expected_oid));
		return -1;
	}

	the_hash_algo->final_fn(real_oid.hash, &c);
	if (!FUNC5(expected_oid, &real_oid)) {
		FUNC1(FUNC0("hash mismatch for %s (expected %s)"), path,
		      FUNC4(expected_oid));
		return -1;
	}

	return 0;
}
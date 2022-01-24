#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t size; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ obj_hdr ;
typedef  int /*<<< orphan*/  head ;
typedef  int /*<<< orphan*/  git_zstream ;
struct TYPE_6__ {unsigned char* data; size_t len; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ git_rawobj ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 int /*<<< orphan*/  GIT_ERROR_ZLIB ; 
 int /*<<< orphan*/  GIT_ZSTREAM_INFLATE ; 
 int /*<<< orphan*/  GIT_ZSTREAM_INIT ; 
 int MAX_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned char*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,unsigned char*,size_t) ; 
 int FUNC14 (TYPE_1__*,size_t*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC15(git_rawobj *out, git_buf *obj)
{
	git_zstream zstream = GIT_ZSTREAM_INIT;
	unsigned char head[MAX_HEADER_LEN], *body = NULL;
	size_t decompressed, head_len, body_len, alloc_size;
	obj_hdr hdr;
	int error;

	if ((error = FUNC11(&zstream, GIT_ZSTREAM_INFLATE)) < 0 ||
		(error = FUNC12(&zstream, FUNC4(obj), FUNC5(obj))) < 0)
		goto done;

	decompressed = sizeof(head);

	/*
	 * inflate the initial part of the compressed buffer in order to
	 * parse the header; read the largest header possible, then push the
	 * remainder into the body buffer.
	 */
	if ((error = FUNC10(head, &decompressed, &zstream)) < 0 ||
		(error = FUNC14(&hdr, &head_len, head, decompressed)) < 0)
		goto done;

	if (!FUNC7(hdr.type)) {
		FUNC6(GIT_ERROR_ODB, "failed to inflate disk object");
		error = -1;
		goto done;
	}

	/*
	 * allocate a buffer and inflate the object data into it
	 * (including the initial sequence in the head buffer).
	 */
	if (FUNC0(&alloc_size, hdr.size, 1) ||
		(body = FUNC3(alloc_size)) == NULL) {
		error = -1;
		goto done;
	}

	FUNC1(decompressed >= head_len);
	body_len = decompressed - head_len;

	if (body_len)
		FUNC13(body, head + head_len, body_len);

	decompressed = hdr.size - body_len;
	if ((error = FUNC10(body + body_len, &decompressed, &zstream)) < 0)
		goto done;

	if (!FUNC8(&zstream)) {
		FUNC6(GIT_ERROR_ZLIB, "failed to finish zlib inflation: stream aborted prematurely");
		error = -1;
		goto done;
	}

	body[hdr.size] = '\0';

	out->data = body;
	out->len = hdr.size;
	out->type = hdr.type;

done:
	if (error < 0)
		FUNC2(body);

	FUNC9(&zstream);
	return error;
}
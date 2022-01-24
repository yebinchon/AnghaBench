#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ obj_hdr ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {size_t start_len; int /*<<< orphan*/  start; int /*<<< orphan*/  zstream; TYPE_1__ map; } ;
typedef  TYPE_3__ loose_readstream ;
typedef  int /*<<< orphan*/  head ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 int MAX_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int FUNC5 (TYPE_2__*,size_t*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC6(
	obj_hdr *hdr,
	loose_readstream *stream)
{
	unsigned char head[MAX_HEADER_LEN];
	size_t init, head_len;
	int error;

	if ((error = FUNC3(&stream->zstream,
			stream->map.data, stream->map.len)) < 0)
		return error;

	init = sizeof(head);

	/*
	 * inflate the initial part of the compressed buffer in order to
	 * parse the header; read the largest header possible, then store
	 * it in the `start` field of the stream object.
	 */
	if ((error = FUNC2(head, &init, &stream->zstream)) < 0 ||
		(error = FUNC5(hdr, &head_len, head, init)) < 0)
		return error;

	if (!FUNC1(hdr->type)) {
		FUNC0(GIT_ERROR_ODB, "failed to inflate disk object");
		return -1;
	}

	if (init > head_len) {
		stream->start_len = init - head_len;
		FUNC4(stream->start, head + head_len, init - head_len);
	}

	return 0;
}
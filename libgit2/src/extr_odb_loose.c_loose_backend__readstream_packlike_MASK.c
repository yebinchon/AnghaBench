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
struct TYPE_7__ {unsigned char* data; size_t len; } ;
struct TYPE_9__ {int /*<<< orphan*/  zstream; TYPE_1__ map; } ;
typedef  TYPE_3__ loose_readstream ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_ODB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC3 (TYPE_2__*,size_t*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC4(
	obj_hdr *hdr,
	loose_readstream *stream)
{
	const unsigned char *data;
	size_t data_len, head_len;
	int error;

	data = stream->map.data;
	data_len = stream->map.len;

	/*
	 * read the object header, which is an (uncompressed)
	 * binary encoding of the object type and size.
	 */
	if ((error = FUNC3(hdr, &head_len, data, data_len)) < 0)
		return error;

	if (!FUNC1(hdr->type)) {
		FUNC0(GIT_ERROR_ODB, "failed to inflate loose object");
		return -1;
	}

	return FUNC2(&stream->zstream,
		data + head_len, data_len - head_len);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ avail_in; char* msg; int /*<<< orphan*/  avail_out; } ;
struct TYPE_6__ {scalar_t__ avail_in; TYPE_5__ z; scalar_t__ avail_out; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
#define  Z_BUF_ERROR 130 
 int Z_MEM_ERROR ; 
#define  Z_OK 129 
#define  Z_STREAM_END 128 
 int FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(git_zstream *strm, int flush)
{
	int status;

	for (;;) {
		FUNC5(strm);

		/* Never say Z_FINISH unless we are feeding everything */
		status = FUNC0(&strm->z,
				 (strm->z.avail_in != strm->avail_in)
				 ? 0 : flush);
		if (status == Z_MEM_ERROR)
			FUNC1("deflate: out of memory");
		FUNC4(strm);

		/*
		 * Let zlib work another round, while we can still
		 * make progress.
		 */
		if ((strm->avail_out && !strm->z.avail_out) &&
		    (status == Z_OK || status == Z_BUF_ERROR))
			continue;
		break;
	}

	switch (status) {
	/* Z_BUF_ERROR: normal, needs more space in the output buffer */
	case Z_BUF_ERROR:
	case Z_OK:
	case Z_STREAM_END:
		return status;
	default:
		break;
	}
	FUNC2("deflate: %s (%s)", FUNC3(status),
	      strm->z.msg ? strm->z.msg : "no message");
	return status;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ avail_in; unsigned char* next_in; scalar_t__ avail_out; unsigned char* next_out; void* opaque; void* zfree; void* zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CHUNK ; 
 int Z_ERRNO ; 
 int Z_FINISH ; 
 int Z_NO_FLUSH ; 
 void* Z_NULL ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int Z_STREAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (unsigned char*,int,unsigned int,int /*<<< orphan*/ *) ; 

int FUNC8(FILE *source, FILE *dest, int level)
{
    int ret, flush;
    unsigned have;
    z_stream strm;
    unsigned char in[CHUNK];
    unsigned char out[CHUNK];

    /* allocate deflate state */
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    ret = FUNC3(&strm, level);
    if (ret != Z_OK)
        return ret;

    /* compress until end of file */
    do {
        strm.avail_in = FUNC6(in, 1, CHUNK, source);
        if (FUNC5(source)) {
            (void)FUNC2(&strm);
            return Z_ERRNO;
        }
        flush = FUNC4(source) ? Z_FINISH : Z_NO_FLUSH;
        strm.next_in = in;

        /* run deflate() on input until output buffer not full, finish
           compression if all of source has been read in */
        do {
            strm.avail_out = CHUNK;
            strm.next_out = out;
            ret = FUNC1(&strm, flush);    /* no bad return value */
            FUNC0(ret != Z_STREAM_ERROR);  /* state not clobbered */
            have = CHUNK - strm.avail_out;
            if (FUNC7(out, 1, have, dest) != have || FUNC5(dest)) {
                (void)FUNC2(&strm);
                return Z_ERRNO;
            }
        } while (strm.avail_out == 0);
        FUNC0(strm.avail_in == 0);     /* all input will be used */

        /* done when last data in file processed */
    } while (flush != Z_FINISH);
    FUNC0(ret == Z_STREAM_END);        /* stream will be complete */

    /* clean up and return */
    (void)FUNC2(&strm);
    return Z_OK;
}
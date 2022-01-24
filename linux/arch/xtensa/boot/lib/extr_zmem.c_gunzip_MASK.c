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
struct TYPE_5__ {unsigned char* next_in; int avail_in; unsigned char* next_out; int avail_out; int /*<<< orphan*/  workspace; } ;
typedef  TYPE_1__ z_stream ;

/* Variables and functions */
 int COMMENT ; 
 unsigned char DEFLATED ; 
 int EXTRA_FIELD ; 
 int HEAD_CRC ; 
 int /*<<< orphan*/  MAX_WBITS ; 
 int ORIG_NAME ; 
 int RESERVED ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6 (void *dst, int dstlen, unsigned char *src, int *lenp)
{
	z_stream s;
	int r, i, flags;

        /* skip header */
        i = 10;
        flags = src[3];
        if (src[2] != DEFLATED || (flags & RESERVED) != 0) {
                //puts("bad gzipped data\n");
                FUNC0();
        }
        if ((flags & EXTRA_FIELD) != 0)
                i = 12 + src[10] + (src[11] << 8);
        if ((flags & ORIG_NAME) != 0)
                while (src[i++] != 0)
                        ;
        if ((flags & COMMENT) != 0)
                while (src[i++] != 0)
                        ;
        if ((flags & HEAD_CRC) != 0)
                i += 2;
        if (i >= *lenp) {
                //puts("gunzip: ran out of data in header\n");
                FUNC0();
        }

	s.workspace = FUNC1(FUNC5());
        r = FUNC4(&s, -MAX_WBITS);
        if (r != Z_OK) {
                //puts("inflateInit2 returned "); puthex(r); puts("\n");
                FUNC0();
        }
        s.next_in = src + i;
        s.avail_in = *lenp - i;
        s.next_out = dst;
        s.avail_out = dstlen;
        r = FUNC2(&s, Z_FINISH);
        if (r != Z_OK && r != Z_STREAM_END) {
                //puts("inflate returned "); puthex(r); puts("\n");
                FUNC0();
        }
        *lenp = s.next_out - (unsigned char *) dst;
        FUNC3(&s);
}
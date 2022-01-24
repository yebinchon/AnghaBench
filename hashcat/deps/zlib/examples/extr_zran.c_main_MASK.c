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
struct access {int have; TYPE_1__* list; } ;
typedef  int off_t ;
struct TYPE_2__ {int out; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CHUNK ; 
 int /*<<< orphan*/  SPAN ; 
#define  Z_DATA_ERROR 130 
#define  Z_ERRNO 129 
#define  Z_MEM_ERROR 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct access**) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct access*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct access*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC7(int argc, char **argv)
{
    int len;
    off_t offset;
    FILE *in;
    struct access *index = NULL;
    unsigned char buf[CHUNK];

    /* open input file */
    if (argc != 2) {
        FUNC4(stderr, "usage: zran file.gz\n");
        return 1;
    }
    in = FUNC3(argv[1], "rb");
    if (in == NULL) {
        FUNC4(stderr, "zran: could not open %s for reading\n", argv[1]);
        return 1;
    }

    /* build index */
    len = FUNC0(in, SPAN, &index);
    if (len < 0) {
        FUNC2(in);
        switch (len) {
        case Z_MEM_ERROR:
            FUNC4(stderr, "zran: out of memory\n");
            break;
        case Z_DATA_ERROR:
            FUNC4(stderr, "zran: compressed data error in %s\n", argv[1]);
            break;
        case Z_ERRNO:
            FUNC4(stderr, "zran: read error on %s\n", argv[1]);
            break;
        default:
            FUNC4(stderr, "zran: error %d while building index\n", len);
        }
        return 1;
    }
    FUNC4(stderr, "zran: built index with %d access points\n", len);

    /* use index by reading some bytes from an arbitrary offset */
    offset = (index->list[index->have - 1].out << 1) / 3;
    len = FUNC1(in, index, offset, buf, CHUNK);
    if (len < 0)
        FUNC4(stderr, "zran: extraction failed: %s error\n",
                len == Z_MEM_ERROR ? "out of memory" : "input corrupted");
    else {
        FUNC6(buf, 1, len, stdout);
        FUNC4(stderr, "zran: extracted %d bytes at %llu\n", len, offset);
    }

    /* clean up and exit */
    FUNC5(index);
    FUNC2(in);
    return 0;
}
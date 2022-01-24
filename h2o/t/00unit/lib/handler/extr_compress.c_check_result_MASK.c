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
typedef  int /*<<< orphan*/  zs ;
struct TYPE_8__ {unsigned int avail_out; unsigned int avail_in; void* next_in; void* next_out; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ raw; } ;
typedef  TYPE_2__ h2o_sendvec_t ;
typedef  int /*<<< orphan*/  decbuf ;

/* Variables and functions */
 int /*<<< orphan*/  WINDOW_BITS ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  free_cb ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(h2o_sendvec_t *vecs, size_t num_vecs, const char *expected, size_t expectedlen)
{
    z_stream zs;
    char decbuf[expectedlen + 1];

    FUNC4(&zs, 0, sizeof(zs));
    zs.zalloc = alloc_cb;
    zs.zfree = free_cb;
    zs.next_out = (void *)decbuf;
    zs.avail_out = (unsigned)sizeof(decbuf);

    FUNC2(&zs, WINDOW_BITS);

    int inflate_ret = -1;
    size_t i;
    for (i = 0; i != num_vecs; ++i) {
        zs.next_in = (void *)vecs[i].raw;
        zs.avail_in = (unsigned)vecs[i].len;
        inflate_ret = FUNC0(&zs, Z_NO_FLUSH);
        if (zs.avail_out == 0) {
            FUNC5(0);
            return;
        }
        if (zs.avail_in != 0) {
            FUNC5(0);
            return;
        }
    }

    FUNC5(inflate_ret == Z_STREAM_END);
    FUNC1(&zs);

    FUNC5(zs.avail_out == sizeof(decbuf) - expectedlen);
    FUNC5(FUNC3(decbuf, expected, expectedlen) == 0);
}
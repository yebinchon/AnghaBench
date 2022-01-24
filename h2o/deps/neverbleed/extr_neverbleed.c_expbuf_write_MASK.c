#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vecs ;
struct iovec {size_t* iov_base; int iov_len; int /*<<< orphan*/ * member_0; } ;
struct expbuf_t {size_t* start; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  bufsz ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 size_t FUNC1 (struct expbuf_t*) ; 
 int FUNC2 (int,struct iovec*,int) ; 

__attribute__((used)) static int FUNC3(struct expbuf_t *buf, int fd)
{
    struct iovec vecs[2] = {{NULL}};
    size_t bufsz = FUNC1(buf);
    int vecindex;
    ssize_t r;

    vecs[0].iov_base = &bufsz;
    vecs[0].iov_len = sizeof(bufsz);
    vecs[1].iov_base = buf->start;
    vecs[1].iov_len = bufsz;

    for (vecindex = 0; vecindex != sizeof(vecs) / sizeof(vecs[0]);) {
        while ((r = FUNC2(fd, vecs + vecindex, sizeof(vecs) / sizeof(vecs[0]) - vecindex)) == -1 && errno == EINTR)
            ;
        if (r == -1)
            return -1;
        FUNC0(r != 0);
        while (r != 0 && r >= vecs[vecindex].iov_len) {
            r -= vecs[vecindex].iov_len;
            ++vecindex;
        }
        if (r != 0) {
            vecs[vecindex].iov_base = (char *)vecs[vecindex].iov_base + r;
            vecs[vecindex].iov_len -= r;
        }
    }

    return 0;
}
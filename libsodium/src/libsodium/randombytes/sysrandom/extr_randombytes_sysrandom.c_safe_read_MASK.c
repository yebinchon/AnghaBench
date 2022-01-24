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
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 size_t SSIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 size_t FUNC1 (int const,unsigned char*,size_t) ; 

__attribute__((used)) static ssize_t
FUNC2(const int fd, void * const buf_, size_t size)
{
    unsigned char *buf = (unsigned char *) buf_;
    ssize_t        readnb;

    FUNC0(size > (size_t) 0U);
    FUNC0(size <= SSIZE_MAX);
    do {
        while ((readnb = FUNC1(fd, buf, size)) < (ssize_t) 0 &&
               (errno == EINTR || errno == EAGAIN)); /* LCOV_EXCL_LINE */
        if (readnb < (ssize_t) 0) {
            return readnb; /* LCOV_EXCL_LINE */
        }
        if (readnb == (ssize_t) 0) {
            break; /* LCOV_EXCL_LINE */
        }
        size -= (size_t) readnb;
        buf += readnb;
    } while (size > (ssize_t) 0);

    return (ssize_t) (buf - (unsigned char *) buf_);
}
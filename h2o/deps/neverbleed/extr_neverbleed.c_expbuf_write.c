
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vecs ;
struct iovec {size_t* iov_base; int iov_len; int * member_0; } ;
struct expbuf_t {size_t* start; } ;
typedef int ssize_t ;
typedef int bufsz ;


 scalar_t__ EINTR ;
 int assert (int) ;
 scalar_t__ errno ;
 size_t expbuf_size (struct expbuf_t*) ;
 int writev (int,struct iovec*,int) ;

__attribute__((used)) static int expbuf_write(struct expbuf_t *buf, int fd)
{
    struct iovec vecs[2] = {{((void*)0)}};
    size_t bufsz = expbuf_size(buf);
    int vecindex;
    ssize_t r;

    vecs[0].iov_base = &bufsz;
    vecs[0].iov_len = sizeof(bufsz);
    vecs[1].iov_base = buf->start;
    vecs[1].iov_len = bufsz;

    for (vecindex = 0; vecindex != sizeof(vecs) / sizeof(vecs[0]);) {
        while ((r = writev(fd, vecs + vecindex, sizeof(vecs) / sizeof(vecs[0]) - vecindex)) == -1 && errno == EINTR)
            ;
        if (r == -1)
            return -1;
        assert(r != 0);
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

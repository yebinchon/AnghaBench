
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sz ;
struct expbuf_t {size_t* end; } ;


 int expbuf_reserve (struct expbuf_t*,size_t) ;
 scalar_t__ read_nbytes (int,size_t*,size_t) ;

__attribute__((used)) static int expbuf_read(struct expbuf_t *buf, int fd)
{
    size_t sz;

    if (read_nbytes(fd, &sz, sizeof(sz)) != 0)
        return -1;
    expbuf_reserve(buf, sz);
    if (read_nbytes(fd, buf->end, sz) != 0)
        return -1;
    buf->end += sz;
    return 0;
}

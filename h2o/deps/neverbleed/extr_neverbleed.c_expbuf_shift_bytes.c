
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expbuf_t {void* start; } ;


 scalar_t__ expbuf_shift_num (struct expbuf_t*,size_t*) ;
 size_t expbuf_size (struct expbuf_t*) ;

__attribute__((used)) static void *expbuf_shift_bytes(struct expbuf_t *buf, size_t *l)
{
    void *ret;
    if (expbuf_shift_num(buf, l) != 0)
        return ((void*)0);
    if (expbuf_size(buf) < *l)
        return ((void*)0);
    ret = buf->start;
    buf->start += *l;
    return ret;
}

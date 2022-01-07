
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expbuf_t {size_t end; } ;


 int expbuf_push_num (struct expbuf_t*,size_t) ;
 int expbuf_reserve (struct expbuf_t*,size_t) ;
 int memcpy (size_t,void const*,size_t) ;

__attribute__((used)) static void expbuf_push_bytes(struct expbuf_t *buf, const void *p, size_t l)
{
    expbuf_push_num(buf, l);
    expbuf_reserve(buf, l);
    memcpy(buf->end, p, l);
    buf->end += l;
}

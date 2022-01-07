
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
struct expbuf_t {int end; } ;


 int expbuf_reserve (struct expbuf_t*,int) ;
 int memcpy (int,size_t*,int) ;

__attribute__((used)) static void expbuf_push_num(struct expbuf_t *buf, size_t v)
{
    expbuf_reserve(buf, sizeof(v));
    memcpy(buf->end, &v, sizeof(v));
    buf->end += sizeof(v);
}

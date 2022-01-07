
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expbuf_t {size_t end; } ;


 int expbuf_reserve (struct expbuf_t*,size_t) ;
 int memcpy (size_t,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void expbuf_push_str(struct expbuf_t *buf, const char *s)
{
    size_t l = strlen(s) + 1;
    expbuf_reserve(buf, l);
    memcpy(buf->end, s, l);
    buf->end += l;
}

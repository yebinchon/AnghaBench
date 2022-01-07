
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expbuf_t {char* start; } ;


 int expbuf_size (struct expbuf_t*) ;
 char* memchr (char*,char,int ) ;

__attribute__((used)) static char *expbuf_shift_str(struct expbuf_t *buf)
{
    char *nul = memchr(buf->start, '\0', expbuf_size(buf)), *ret;
    if (nul == ((void*)0))
        return ((void*)0);
    ret = buf->start;
    buf->start = nul + 1;
    return ret;
}

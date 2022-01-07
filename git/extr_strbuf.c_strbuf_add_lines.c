
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int add_lines (struct strbuf*,char const*,int *,char const*,size_t) ;

void strbuf_add_lines(struct strbuf *out, const char *prefix,
        const char *buf, size_t size)
{
 add_lines(out, prefix, ((void*)0), buf, size);
}

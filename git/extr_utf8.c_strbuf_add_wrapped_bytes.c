
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int free (char*) ;
 int strbuf_add_wrapped_text (struct strbuf*,char*,int,int,int) ;
 char* xstrndup (char const*,int) ;

void strbuf_add_wrapped_bytes(struct strbuf *buf, const char *data, int len,
        int indent, int indent2, int width)
{
 char *tmp = xstrndup(data, len);
 strbuf_add_wrapped_text(buf, tmp, indent, indent2, width);
 free(tmp);
}

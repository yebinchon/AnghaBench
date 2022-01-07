
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 int strbuf_addstr (struct strbuf*,char const*) ;

__attribute__((used)) static void add_flattened_path(struct strbuf *out, const char *s)
{
 size_t i = out->len;
 strbuf_addstr(out, s);
 for (; i < out->len; i++)
  if (out->buf[i] == '/')
   out->buf[i] = '_';
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static void sanitize_client(struct strbuf *out, const char *in)
{
 for (; *in; in++) {
  if (*in == '/')
   continue;
  if (*in == '.' && (!out->len || out->buf[out->len - 1] == '.'))
   continue;
  strbuf_addch(out, *in);
 }

 while (out->len && out->buf[out->len - 1] == '.')
  strbuf_setlen(out, out->len - 1);
}

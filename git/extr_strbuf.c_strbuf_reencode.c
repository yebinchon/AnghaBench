
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 char* reencode_string_len (int ,int ,char const*,char const*,size_t*) ;
 scalar_t__ same_encoding (char const*,char const*) ;
 int strbuf_attach (struct strbuf*,char*,size_t,size_t) ;

int strbuf_reencode(struct strbuf *sb, const char *from, const char *to)
{
 char *out;
 size_t len;

 if (same_encoding(from, to))
  return 0;

 out = reencode_string_len(sb->buf, sb->len, to, from, &len);
 if (!out)
  return -1;

 strbuf_attach(sb, out, len, len);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char const* buf; } ;


 int isspace (char const) ;
 char* memchr (char const*,char,int) ;
 int sign_off_header ;
 scalar_t__ starts_with (char const*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int rest_is_empty(const struct strbuf *sb, int start)
{
 int i, eol;
 const char *nl;


 for (i = start; i < sb->len; i++) {
  nl = memchr(sb->buf + i, '\n', sb->len - i);
  if (nl)
   eol = nl - sb->buf;
  else
   eol = sb->len;

  if (strlen(sign_off_header) <= eol - i &&
      starts_with(sb->buf + i, sign_off_header)) {
   i = eol;
   continue;
  }
  while (i < eol)
   if (!isspace(sb->buf[i++]))
    return 0;
 }

 return 1;
}

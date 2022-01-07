
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 int extract_param (char const*,char*,struct strbuf*) ;
 scalar_t__ isspace (char const) ;
 scalar_t__ starts_with (char*,char*) ;
 int strbuf_addch (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_grow (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 int tolower (char const) ;

__attribute__((used)) static void extract_content_type(struct strbuf *raw, struct strbuf *type,
     struct strbuf *charset)
{
 const char *p;

 strbuf_reset(type);
 strbuf_grow(type, raw->len);
 for (p = raw->buf; *p; p++) {
  if (isspace(*p))
   continue;
  if (*p == ';') {
   p++;
   break;
  }
  strbuf_addch(type, tolower(*p));
 }

 if (!charset)
  return;

 strbuf_reset(charset);
 while (*p) {
  while (isspace(*p) || *p == ';')
   p++;
  if (!extract_param(p, "charset", charset))
   return;
  while (*p && !isspace(*p))
   p++;
 }

 if (!charset->len && starts_with(type->buf, "text/"))
  strbuf_addstr(charset, "ISO-8859-1");
}

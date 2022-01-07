
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ buf; } ;


 struct strbuf STRBUF_INIT ;
 int comment_line_char ;
 int cut_line ;
 scalar_t__ starts_with (char const*,scalar_t__) ;
 int strbuf_addf (struct strbuf*,char*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 char* strstr (char const*,scalar_t__) ;

size_t wt_status_locate_end(const char *s, size_t len)
{
 const char *p;
 struct strbuf pattern = STRBUF_INIT;

 strbuf_addf(&pattern, "\n%c %s", comment_line_char, cut_line);
 if (starts_with(s, pattern.buf + 1))
  len = 0;
 else if ((p = strstr(s, pattern.buf)))
  len = p - s + 1;
 strbuf_release(&pattern);
 return len;
}

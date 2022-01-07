
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int get_one_line (char const*) ;
 scalar_t__ is_blank_line (char const*,int*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_grow (struct strbuf*,int) ;

const char *format_subject(struct strbuf *sb, const char *msg,
      const char *line_separator)
{
 int first = 1;

 for (;;) {
  const char *line = msg;
  int linelen = get_one_line(line);

  msg += linelen;
  if (!linelen || is_blank_line(line, &linelen))
   break;

  if (!sb)
   continue;
  strbuf_grow(sb, linelen + 2);
  if (!first)
   strbuf_addstr(sb, line_separator);
  strbuf_add(sb, line, linelen);
  first = 0;
 }
 return msg;
}

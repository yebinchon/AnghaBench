
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* memchr (char const*,char,unsigned long) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addstr (struct strbuf*,char*) ;

__attribute__((used)) static void append_lines(struct strbuf *out, const char *buf, unsigned long size, int lines)
{
 int i;
 const char *sp, *eol;
 size_t len;

 sp = buf;

 for (i = 0; i < lines && sp < buf + size; i++) {
  if (i)
   strbuf_addstr(out, "\n    ");
  eol = memchr(sp, '\n', size - (sp - buf));
  len = eol ? eol - sp : size - (sp - buf);
  strbuf_add(out, sp, len);
  if (!eol)
   break;
  sp = eol + 1;
 }
}

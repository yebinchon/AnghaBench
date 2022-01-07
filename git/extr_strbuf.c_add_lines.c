
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* memchr (char const*,char,size_t) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete_line (struct strbuf*) ;

__attribute__((used)) static void add_lines(struct strbuf *out,
   const char *prefix1,
   const char *prefix2,
   const char *buf, size_t size)
{
 while (size) {
  const char *prefix;
  const char *next = memchr(buf, '\n', size);
  next = next ? (next + 1) : (buf + size);

  prefix = ((prefix2 && (buf[0] == '\n' || buf[0] == '\t'))
     ? prefix2 : prefix1);
  strbuf_addstr(out, prefix);
  strbuf_add(out, buf, next - buf);
  size -= next - buf;
  buf = next;
 }
 strbuf_complete_line(out);
}

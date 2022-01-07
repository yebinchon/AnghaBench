
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addchars (struct strbuf*,char,int) ;
 char* strchrnul (char const*,char) ;

__attribute__((used)) static void strbuf_add_indented_text(struct strbuf *buf, const char *text,
         int indent, int indent2)
{
 if (indent < 0)
  indent = 0;
 while (*text) {
  const char *eol = strchrnul(text, '\n');
  if (*eol == '\n')
   eol++;
  strbuf_addchars(buf, ' ', indent);
  strbuf_add(buf, text, eol - text);
  text = eol;
  indent = indent2;
 }
}

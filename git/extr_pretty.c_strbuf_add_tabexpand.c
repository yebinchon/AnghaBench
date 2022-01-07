
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 char* memchr (char const*,char,int) ;
 int pp_utf8_width (char const*,char const*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addchars (struct strbuf*,char,int) ;

__attribute__((used)) static void strbuf_add_tabexpand(struct strbuf *sb, int tabwidth,
     const char *line, int linelen)
{
 const char *tab;

 while ((tab = memchr(line, '\t', linelen)) != ((void*)0)) {
  int width = pp_utf8_width(line, tab);







  if (width < 0)
   break;


  strbuf_add(sb, line, tab - line);


  strbuf_addchars(sb, ' ', tabwidth - (width % tabwidth));


  linelen -= tab + 1 - line;
  line = tab + 1;
 }






 strbuf_add(sb, line, linelen);
}

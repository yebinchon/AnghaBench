
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emitted_diff_symbol {int flags; char* line; int len; int indent_width; int indent_off; } ;


 int INDENT_BLANKLINE ;
 int WS_TAB_WIDTH_MASK ;
 int isspace (char const) ;

__attribute__((used)) static void fill_es_indent_data(struct emitted_diff_symbol *es)
{
 unsigned int off = 0, i;
 int width = 0, tab_width = es->flags & WS_TAB_WIDTH_MASK;
 const char *s = es->line;
 const int len = es->len;


 while (s[off] == '\f' || s[off] == '\v' ||
        (s[off] == '\r' && off < len - 1))
  off++;


 while(1) {
  if (s[off] == ' ') {
   width++;
   off++;
  } else if (s[off] == '\t') {
   width += tab_width - (width % tab_width);
   while (s[++off] == '\t')
    width += tab_width;
  } else {
   break;
  }
 }


 for (i = off; i < len; i++)
  if (!isspace(s[i]))
      break;

 if (i == len) {
  es->indent_width = INDENT_BLANKLINE;
  es->indent_off = len;
 } else {
  es->indent_off = off;
  es->indent_width = width;
 }
}

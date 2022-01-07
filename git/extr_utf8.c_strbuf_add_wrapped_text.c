
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; } ;


 size_t display_mode_esc_sequence_len (char const*) ;
 int isalnum (char const) ;
 int isspace (char const) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_add_indented_text (struct strbuf*,char const*,int,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addchars (struct strbuf*,char,int) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 scalar_t__ utf8_width (char const**,int *) ;

void strbuf_add_wrapped_text(struct strbuf *buf,
  const char *text, int indent1, int indent2, int width)
{
 int indent, w, assume_utf8 = 1;
 const char *bol, *space, *start = text;
 size_t orig_len = buf->len;

 if (width <= 0) {
  strbuf_add_indented_text(buf, text, indent1, indent2);
  return;
 }

retry:
 bol = text;
 w = indent = indent1;
 space = ((void*)0);
 if (indent < 0) {
  w = -indent;
  space = text;
 }

 for (;;) {
  char c;
  size_t skip;

  while ((skip = display_mode_esc_sequence_len(text)))
   text += skip;

  c = *text;
  if (!c || isspace(c)) {
   if (w <= width || !space) {
    const char *start = bol;
    if (!c && text == start)
     return;
    if (space)
     start = space;
    else
     strbuf_addchars(buf, ' ', indent);
    strbuf_add(buf, start, text - start);
    if (!c)
     return;
    space = text;
    if (c == '\t')
     w |= 0x07;
    else if (c == '\n') {
     space++;
     if (*space == '\n') {
      strbuf_addch(buf, '\n');
      goto new_line;
     }
     else if (!isalnum(*space))
      goto new_line;
     else
      strbuf_addch(buf, ' ');
    }
    w++;
    text++;
   }
   else {
new_line:
    strbuf_addch(buf, '\n');
    text = bol = space + isspace(*space);
    space = ((void*)0);
    w = indent = indent2;
   }
   continue;
  }
  if (assume_utf8) {
   w += utf8_width(&text, ((void*)0));
   if (!text) {
    assume_utf8 = 0;
    text = start;
    strbuf_setlen(buf, orig_len);
    goto retry;
   }
  } else {
   w++;
   text++;
  }
 }
}

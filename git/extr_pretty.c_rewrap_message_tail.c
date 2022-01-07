
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; } ;
struct format_commit_context {size_t width; size_t indent1; size_t indent2; scalar_t__ wrap_start; } ;


 int strbuf_wrap (struct strbuf*,scalar_t__,size_t,size_t,size_t) ;

__attribute__((used)) static void rewrap_message_tail(struct strbuf *sb,
    struct format_commit_context *c,
    size_t new_width, size_t new_indent1,
    size_t new_indent2)
{
 if (c->width == new_width && c->indent1 == new_indent1 &&
     c->indent2 == new_indent2)
  return;
 if (c->wrap_start < sb->len)
  strbuf_wrap(sb, c->wrap_start, c->width, c->indent1, c->indent2);
 c->wrap_start = sb->len;
 c->width = new_width;
 c->indent1 = new_indent1;
 c->indent2 = new_indent2;
}

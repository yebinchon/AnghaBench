
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ buf; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_add (struct strbuf*,scalar_t__,size_t) ;
 int strbuf_add_wrapped_text (struct strbuf*,scalar_t__,int,int,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;

__attribute__((used)) static void strbuf_wrap(struct strbuf *sb, size_t pos,
   size_t width, size_t indent1, size_t indent2)
{
 struct strbuf tmp = STRBUF_INIT;

 if (pos)
  strbuf_add(&tmp, sb->buf, pos);
 strbuf_add_wrapped_text(&tmp, sb->buf + pos,
    (int) indent1, (int) indent2, (int) width);
 strbuf_swap(&tmp, sb);
 strbuf_release(&tmp);
}

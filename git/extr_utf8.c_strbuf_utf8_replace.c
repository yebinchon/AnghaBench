
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 struct strbuf STRBUF_INIT ;
 size_t display_mode_esc_sequence_len (char*) ;
 int memcpy (char*,char const*,int) ;
 int strbuf_grow (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;
 int strlen (char const*) ;
 size_t utf8_width (char const**,int *) ;

void strbuf_utf8_replace(struct strbuf *sb_src, int pos, int width,
    const char *subst)
{
 struct strbuf sb_dst = STRBUF_INIT;
 char *src = sb_src->buf;
 char *end = src + sb_src->len;
 char *dst;
 int w = 0, subst_len = 0;

 if (subst)
  subst_len = strlen(subst);
 strbuf_grow(&sb_dst, sb_src->len + subst_len);
 dst = sb_dst.buf;

 while (src < end) {
  char *old;
  size_t n;

  while ((n = display_mode_esc_sequence_len(src))) {
   memcpy(dst, src, n);
   src += n;
   dst += n;
  }

  if (src >= end)
   break;

  old = src;
  n = utf8_width((const char**)&src, ((void*)0));
  if (!src)
   goto out;
  if (n && w >= pos && w < pos + width) {
   if (subst) {
    memcpy(dst, subst, subst_len);
    dst += subst_len;
    subst = ((void*)0);
   }
   w += n;
   continue;
  }
  memcpy(dst, old, src - old);
  dst += src - old;
  w += n;
 }
 strbuf_setlen(&sb_dst, dst - sb_dst.buf);
 strbuf_swap(sb_src, &sb_dst);
out:
 strbuf_release(&sb_dst);
}

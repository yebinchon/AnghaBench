
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ normalize_path_copy (int ,int ) ;
 int strbuf_grow (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;
 int strbuf_swap (struct strbuf*,struct strbuf*) ;
 int strlen (int ) ;

int strbuf_normalize_path(struct strbuf *src)
{
 struct strbuf dst = STRBUF_INIT;

 strbuf_grow(&dst, src->len);
 if (normalize_path_copy(dst.buf, src->buf) < 0) {
  strbuf_release(&dst);
  return -1;
 }





 strbuf_setlen(&dst, strlen(dst.buf));
 strbuf_swap(src, &dst);
 strbuf_release(&dst);
 return 0;
}

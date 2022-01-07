
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 int hex2chr (char const*) ;
 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_init (struct strbuf*,int ) ;
 struct strbuf* xmalloc (int) ;

__attribute__((used)) static struct strbuf *decode_q_segment(const struct strbuf *q_seg, int rfc2047)
{
 const char *in = q_seg->buf;
 int c;
 struct strbuf *out = xmalloc(sizeof(struct strbuf));
 strbuf_init(out, q_seg->len);

 while ((c = *in++) != 0) {
  if (c == '=') {
   int ch, d = *in;
   if (d == '\n' || !d)
    break;
   ch = hex2chr(in);
   if (ch >= 0) {
    strbuf_addch(out, ch);
    in += 2;
    continue;
   }

  }
  if (rfc2047 && c == '_')
   c = 0x20;
  strbuf_addch(out, c);
 }
 return out;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;


 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_init (struct strbuf*,int ) ;
 struct strbuf* xmalloc (int) ;

__attribute__((used)) static struct strbuf *decode_b_segment(const struct strbuf *b_seg)
{

 int c, pos = 0, acc = 0;
 const char *in = b_seg->buf;
 struct strbuf *out = xmalloc(sizeof(struct strbuf));
 strbuf_init(out, b_seg->len);

 while ((c = *in++) != 0) {
  if (c == '+')
   c = 62;
  else if (c == '/')
   c = 63;
  else if ('A' <= c && c <= 'Z')
   c -= 'A';
  else if ('a' <= c && c <= 'z')
   c -= 'a' - 26;
  else if ('0' <= c && c <= '9')
   c -= '0' - 52;
  else
   continue;
  switch (pos++) {
  case 0:
   acc = (c << 2);
   break;
  case 1:
   strbuf_addch(out, (acc | (c >> 4)));
   acc = (c & 15) << 4;
   break;
  case 2:
   strbuf_addch(out, (acc | (c >> 2)));
   acc = (c & 3) << 6;
   break;
  case 3:
   strbuf_addch(out, (acc | c));
   acc = pos = 0;
   break;
  }
 }
 return out;
}

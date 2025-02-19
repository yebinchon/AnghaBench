
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 void** base64chars ;
 int str_len_ensure (int *,int ,int) ;

__attribute__((used)) static int
pack_m(mrb_state *mrb, mrb_value src, mrb_value dst, mrb_int didx, long count, unsigned int flags)
{
  mrb_int dstlen;
  unsigned long l;
  mrb_int column, srclen;
  char *srcptr, *dstptr, *dstptr0;

  srcptr = RSTRING_PTR(src);
  srclen = RSTRING_LEN(src);

  if (srclen == 0)
    return 0;

  if (count != 0 && count < 3) {
    count = 45;
  } else if (count >= 3) {
    count -= count % 3;
  }

  dstlen = (srclen+2) / 3 * 4;
  if (count > 0) {
    dstlen += (srclen / count) + ((srclen % count) == 0 ? 0 : 1);
  }
  dst = str_len_ensure(mrb, dst, didx + dstlen);
  dstptr = RSTRING_PTR(dst) + didx;

  dstptr0 = dstptr;
  for (column = 3; srclen >= 3; srclen -= 3, column += 3) {
    l = (unsigned char)*srcptr++ << 16;
    l += (unsigned char)*srcptr++ << 8;
    l += (unsigned char)*srcptr++;

    *dstptr++ = base64chars[(l >> 18) & 0x3f];
    *dstptr++ = base64chars[(l >> 12) & 0x3f];
    *dstptr++ = base64chars[(l >> 6) & 0x3f];
    *dstptr++ = base64chars[ l & 0x3f];

    if (column == count) {
      *dstptr++ = '\n';
      column = 0;
    }
  }
  if (srclen == 1) {
    l = (unsigned char)*srcptr++ << 16;
    *dstptr++ = base64chars[(l >> 18) & 0x3f];
    *dstptr++ = base64chars[(l >> 12) & 0x3f];
    *dstptr++ = '=';
    *dstptr++ = '=';
    column += 3;
  } else if (srclen == 2) {
    l = (unsigned char)*srcptr++ << 16;
    l += (unsigned char)*srcptr++ << 8;
    *dstptr++ = base64chars[(l >> 18) & 0x3f];
    *dstptr++ = base64chars[(l >> 12) & 0x3f];
    *dstptr++ = base64chars[(l >> 6) & 0x3f];
    *dstptr++ = '=';
    column += 3;
  }
  if (column > 0 && count > 0) {
    *dstptr++ = '\n';
  }

  return (int)(dstptr - dstptr0);
}

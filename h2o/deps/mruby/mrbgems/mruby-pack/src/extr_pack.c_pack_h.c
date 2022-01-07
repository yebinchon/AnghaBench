
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 unsigned int PACK_FLAG_LSB ;
 scalar_t__ RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 unsigned int hex2int (int ) ;
 int str_len_ensure (int *,int ,int) ;

__attribute__((used)) static int
pack_h(mrb_state *mrb, mrb_value src, mrb_value dst, mrb_int didx, long count, unsigned int flags)
{
  unsigned int a, ashift, b, bshift;
  long slen;
  char *dptr, *dptr0, *sptr;

  sptr = RSTRING_PTR(src);
  slen = (long)RSTRING_LEN(src);

  if (flags & PACK_FLAG_LSB) {
    ashift = 0;
    bshift = 4;
  } else {
    ashift = 4;
    bshift = 0;
  }

  if (count == -1) {
    count = slen;
  } else if (slen > count) {
    slen = count;
  }

  dst = str_len_ensure(mrb, dst, didx + count);
  dptr = RSTRING_PTR(dst) + didx;

  dptr0 = dptr;
  for (; count > 0; count -= 2) {
    a = b = 0;
    if (slen > 0) {
      a = hex2int(*sptr++);
      slen--;
    }
    if (slen > 0) {
      b = hex2int(*sptr++);
      slen--;
    }
    *dptr++ = (a << ashift) + (b << bshift);
  }

  return (int)(dptr - dptr0);
}

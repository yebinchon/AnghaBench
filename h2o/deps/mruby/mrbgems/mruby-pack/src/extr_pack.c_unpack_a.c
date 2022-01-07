
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 unsigned int PACK_FLAG_Z ;
 unsigned int PACK_FLAG_a ;
 scalar_t__ isspace (char const) ;
 scalar_t__ memchr (char const*,char,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_str_new (int *,char const*,int ) ;

__attribute__((used)) static int
unpack_a(mrb_state *mrb, const void *src, int slen, mrb_value ary, long count, unsigned int flags)
{
  mrb_value dst;
  const char *cp, *sptr;
  int copylen;

  sptr = (const char *)src;
  if (count != -1 && count < slen) {
    slen = count;
  }
  copylen = slen;

  if (slen >= 0 && flags & PACK_FLAG_Z) {
    if ((cp = (const char *)memchr(sptr, '\0', slen)) != ((void*)0)) {
      copylen = (int)(cp - sptr);
      if (count == -1) {
        slen = copylen + 1;
      }
    }
  }
  else if (!(flags & PACK_FLAG_a)) {
    while (copylen > 0 && (sptr[copylen - 1] == '\0' || isspace(sptr[copylen - 1]))) {
      copylen--;
    }
  }

  if (copylen < 0) copylen = 0;
  dst = mrb_str_new(mrb, sptr, (mrb_int)copylen);
  mrb_ary_push(mrb, ary, dst);
  return slen;
}

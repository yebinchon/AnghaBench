
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int msg ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int int64_t ;


 int E_RANGE_ERROR ;
 int FIXABLE (int) ;
 unsigned int PACK_FLAG_LITTLEENDIAN ;
 unsigned int PACK_FLAG_SIGNED ;
 int POSFIXABLE (int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_raise (int *,int ,char*) ;
 int snprintf (char*,int,char*,unsigned long long) ;

__attribute__((used)) static int
unpack_q(mrb_state *mrb, const unsigned char *src, int srclen, mrb_value ary, unsigned int flags)
{
  char msg[60];
  uint64_t ull;
  int i, pos, step;
  mrb_int n;

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    pos = 7;
    step = -1;
  } else {
    pos = 0;
    step = 1;
  }
  ull = 0;
  for (i = 0; i < 8; i++) {
    ull = ull * 256 + (uint64_t)src[pos];
    pos += step;
  }
  if (flags & PACK_FLAG_SIGNED) {
    int64_t sll = ull;
    if (!FIXABLE(sll)) {
      snprintf(msg, sizeof(msg), "cannot unpack to Fixnum: %lld", (long long)sll);
      mrb_raise(mrb, E_RANGE_ERROR, msg);
    }
    n = sll;
  } else {
    if (!POSFIXABLE(ull)) {
      snprintf(msg, sizeof(msg), "cannot unpack to Fixnum: %llu", (unsigned long long)ull);
      mrb_raise(mrb, E_RANGE_ERROR, msg);
    }
    n = ull;
  }
  mrb_ary_push(mrb, ary, mrb_fixnum_value(n));
  return 8;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int msg ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;
typedef int int32_t ;


 int E_RANGE_ERROR ;
 int FIXABLE (int) ;
 unsigned int PACK_FLAG_LITTLEENDIAN ;
 unsigned int PACK_FLAG_SIGNED ;
 int POSFIXABLE (int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_raise (int *,int ,char*) ;
 int snprintf (char*,int,char*,unsigned long) ;

__attribute__((used)) static int
unpack_l(mrb_state *mrb, const unsigned char *src, int srclen, mrb_value ary, unsigned int flags)
{

  char msg[60];

  uint32_t ul;
  mrb_int n;

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    ul = (uint32_t)src[3] * 256*256*256;
    ul += (uint32_t)src[2] *256*256;
    ul += (uint32_t)src[1] *256;
    ul += (uint32_t)src[0];
  } else {
    ul = (uint32_t)src[0] * 256*256*256;
    ul += (uint32_t)src[1] *256*256;
    ul += (uint32_t)src[2] *256;
    ul += (uint32_t)src[3];
  }
  if (flags & PACK_FLAG_SIGNED) {
    int32_t sl = ul;

    if (!FIXABLE(sl)) {
      snprintf(msg, sizeof(msg), "cannot unpack to Fixnum: %ld", (long)sl);
      mrb_raise(mrb, E_RANGE_ERROR, msg);
    }

    n = sl;
  } else {

    if (!POSFIXABLE(ul)) {
      snprintf(msg, sizeof(msg), "cannot unpack to Fixnum: %lu", (unsigned long)ul);
      mrb_raise(mrb, E_RANGE_ERROR, msg);
    }

    n = ul;
  }
  mrb_ary_push(mrb, ary, mrb_fixnum_value(n));
  return 4;
}

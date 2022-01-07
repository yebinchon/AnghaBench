
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 unsigned int PACK_FLAG_SIGNED ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_fixnum_value (unsigned char) ;

__attribute__((used)) static int
unpack_c(mrb_state *mrb, const void *src, int srclen, mrb_value ary, unsigned int flags)
{
  if (flags & PACK_FLAG_SIGNED)
    mrb_ary_push(mrb, ary, mrb_fixnum_value(*(signed char *)src));
  else
    mrb_ary_push(mrb, ary, mrb_fixnum_value(*(unsigned char *)src));
  return 1;
}

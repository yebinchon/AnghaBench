
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int mrb_value ;
typedef int mrb_state ;


 unsigned int PACK_FLAG_LITTLEENDIAN ;
 scalar_t__ littleendian ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_float_value (int *,double) ;

__attribute__((used)) static int
unpack_double(mrb_state *mrb, const unsigned char * src, int srclen, mrb_value ary, unsigned int flags)
{
  int i;
  double d;
  uint8_t *buffer = (uint8_t *)&d;

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    if (littleendian) {
      memcpy(buffer, src, 8);
    }
    else {
      for (i = 0; i < 8; ++i) {
        buffer[8 - i - 1] = src[i];
      }
    }
  } else {
    if (littleendian) {
      for (i = 0; i < 8; ++i) {
        buffer[8 - i - 1] = src[i];
      }
    }
    else {
      memcpy(buffer, src, 8);
    }
  }
  mrb_ary_push(mrb, ary, mrb_float_value(mrb, d));

  return 8;
}

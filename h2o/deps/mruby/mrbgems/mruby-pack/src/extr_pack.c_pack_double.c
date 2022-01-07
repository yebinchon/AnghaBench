
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 unsigned int PACK_FLAG_LITTLEENDIAN ;
 int * RSTRING_PTR (int ) ;
 scalar_t__ littleendian ;
 int memcpy (int *,int *,int) ;
 double mrb_float (int ) ;
 int str_len_ensure (int *,int ,int) ;

__attribute__((used)) static int
pack_double(mrb_state *mrb, mrb_value o, mrb_value str, mrb_int sidx, unsigned int flags)
{
  int i;
  double d;
  uint8_t *buffer = (uint8_t *)&d;
  str = str_len_ensure(mrb, str, sidx + 8);
  d = mrb_float(o);

  if (flags & PACK_FLAG_LITTLEENDIAN) {
    if (littleendian) {
      memcpy(RSTRING_PTR(str) + sidx, buffer, 8);
    }
    else {
      for (i = 0; i < 8; ++i) {
        RSTRING_PTR(str)[sidx + i] = buffer[8 - i - 1];
      }
    }
  } else {
    if (littleendian) {
      for (i = 0; i < 8; ++i) {
        RSTRING_PTR(str)[sidx + i] = buffer[8 - i - 1];
      }
    }
    else {
      memcpy(RSTRING_PTR(str) + sidx, buffer, 8);
    }
  }

  return 8;
}

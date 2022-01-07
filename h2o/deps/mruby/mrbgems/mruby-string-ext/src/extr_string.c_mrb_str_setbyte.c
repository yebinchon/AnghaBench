
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_INDEX_ERROR ;
 int RSTRING_LEN (int ) ;
 unsigned char* RSTRING_PTR (int ) ;
 int mrb_fixnum_value (unsigned char) ;
 int mrb_get_args (int *,char*,int*,int*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_modify (int *,int ) ;
 int mrb_str_ptr (int ) ;

__attribute__((used)) static mrb_value
mrb_str_setbyte(mrb_state *mrb, mrb_value str)
{
  mrb_int pos, byte;
  mrb_int len;

  mrb_get_args(mrb, "ii", &pos, &byte);

  len = RSTRING_LEN(str);
  if (pos < -len || len <= pos)
    mrb_raisef(mrb, E_INDEX_ERROR, "index %S is out of array", mrb_fixnum_value(pos));
  if (pos < 0)
    pos += len;

  mrb_str_modify(mrb, mrb_str_ptr(str));
  byte &= 0xff;
  RSTRING_PTR(str)[pos] = (unsigned char)byte;
  return mrb_fixnum_value((unsigned char)byte);
}

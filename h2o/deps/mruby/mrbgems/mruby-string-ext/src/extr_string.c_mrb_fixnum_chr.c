
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_RANGE_ERROR ;
 int mrb_fixnum (int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new (int *,char*,int) ;

__attribute__((used)) static mrb_value
mrb_fixnum_chr(mrb_state *mrb, mrb_value num)
{
  mrb_int cp = mrb_fixnum(num);
  char c;

  if (cp < 0 || 0xff < cp) {
    mrb_raisef(mrb, E_RANGE_ERROR, "%S out of char range", num);
  }
  c = (char)cp;
  return mrb_str_new(mrb, &c, 1);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_RANGE_ERROR ;
 int E_TYPE_ERROR ;



 int RSTRING_LEN (int) ;
 int TRUE ;
 int mrb_fixnum (int) ;
 int mrb_fixnum_value (int) ;
 int mrb_float (int) ;
 int mrb_get_argc (int *) ;
 int mrb_get_args (int *,char*,int*,int*) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int) ;
 int mrb_range_beg_len (int *,int,int*,int*,int,int ) ;
 int mrb_str_substr (int *,int,int,int) ;
 int mrb_type (int) ;

__attribute__((used)) static mrb_value
mrb_str_byteslice(mrb_state *mrb, mrb_value str)
{
  mrb_value a1;
  mrb_int len;

  if (mrb_get_argc(mrb) == 2) {
    mrb_int pos;
    mrb_get_args(mrb, "ii", &pos, &len);
    return mrb_str_substr(mrb, str, pos, len);
  }
  mrb_get_args(mrb, "o|i", &a1, &len);
  switch (mrb_type(a1)) {
  case 128:
    {
      mrb_int beg;

      len = RSTRING_LEN(str);
      switch (mrb_range_beg_len(mrb, a1, &beg, &len, len, TRUE)) {
      case 0:
        break;
      case 1:
        return mrb_str_substr(mrb, str, beg, len);
      case 2:
        mrb_raisef(mrb, E_RANGE_ERROR, "%S out of range", a1);
        break;
      }
      return mrb_nil_value();
    }

  case 129:
    a1 = mrb_fixnum_value((mrb_int)mrb_float(a1));


  case 130:
    return mrb_str_substr(mrb, str, mrb_fixnum(a1), 1);
  default:
    mrb_raise(mrb, E_TYPE_ERROR, "wrong type of argument");
  }

  return mrb_nil_value();
}

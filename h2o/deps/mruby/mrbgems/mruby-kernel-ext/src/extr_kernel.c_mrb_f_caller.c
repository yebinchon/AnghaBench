
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int E_ARGUMENT_ERROR ;
 int MRB_TT_RANGE ;
 int RARRAY_LEN (int ) ;
 int TRUE ;
 int mrb_ary_new (int *) ;
 int mrb_fixnum (int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_get_backtrace (int *) ;
 int mrb_nil_value () ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_range_beg_len (int *,int ,int*,int*,int,int ) ;
 int mrb_to_int (int *,int ) ;
 int mrb_type (int ) ;

__attribute__((used)) static mrb_value
mrb_f_caller(mrb_state *mrb, mrb_value self)
{
  mrb_value bt, v, length;
  mrb_int bt_len, argc, lev, n;

  bt = mrb_get_backtrace(mrb);
  bt_len = RARRAY_LEN(bt);
  argc = mrb_get_args(mrb, "|oo", &v, &length);

  switch (argc) {
    case 0:
      lev = 1;
      n = bt_len - lev;
      break;
    case 1:
      if (mrb_type(v) == MRB_TT_RANGE) {
        mrb_int beg, len;
        if (mrb_range_beg_len(mrb, v, &beg, &len, bt_len, TRUE) == 1) {
          lev = beg;
          n = len;
        }
        else {
          return mrb_nil_value();
        }
      }
      else {
        v = mrb_to_int(mrb, v);
        lev = mrb_fixnum(v);
        if (lev < 0) {
          mrb_raisef(mrb, E_ARGUMENT_ERROR, "negative level (%S)", v);
        }
        n = bt_len - lev;
      }
      break;
    case 2:
      lev = mrb_fixnum(mrb_to_int(mrb, v));
      n = mrb_fixnum(mrb_to_int(mrb, length));
      if (lev < 0) {
        mrb_raisef(mrb, E_ARGUMENT_ERROR, "negative level (%S)", v);
      }
      if (n < 0) {
        mrb_raisef(mrb, E_ARGUMENT_ERROR, "negative size (%S)", length);
      }
      break;
    default:
      lev = n = 0;
      break;
  }

  if (n == 0) {
    return mrb_ary_new(mrb);
  }

  return mrb_funcall(mrb, bt, "[]", 2, mrb_fixnum_value(lev), mrb_fixnum_value(n));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
typedef int buf ;
struct TYPE_2__ {int c; } ;


 scalar_t__ MRB_TT_FIXNUM ;
 TYPE_1__* mrb_basic_ptr (int ) ;
 int mrb_class_ptr (int ) ;
 int mrb_const_get (int *,int ,int ) ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_get_args (int *,char*,int *,scalar_t__*) ;
 int mrb_hash_fetch (int *,int ,int ,int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_set (int *,int ,int ,int ) ;
 int mrb_module_get (int *,char*) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_value (int ) ;
 int mrb_str_append (int *,int ,int ) ;
 int mrb_str_cat2 (int *,int ,char*) ;
 int mrb_str_new_cstr (int *,char*) ;
 scalar_t__ mrb_type (int ) ;
 int snprintf (char*,int,char*,int) ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static mrb_value
mrb_sce_init(mrb_state *mrb, mrb_value self)
{
  mrb_value c, e2c, m, str;
  mrb_int n;
  int argc, no_errno = 0;
  char buf[20];

  argc = mrb_get_args(mrb, "o|i", &m, &n);
  if (argc == 1) {
    if (mrb_type(m) == MRB_TT_FIXNUM) {
      n = mrb_fixnum(m);
      m = mrb_nil_value();
    } else {
      no_errno = 1;
    }
  }
  if (!no_errno) {
    e2c = mrb_const_get(mrb, mrb_obj_value(mrb_module_get(mrb, "Errno")), mrb_intern_lit(mrb, "Errno2class"));
    c = mrb_hash_fetch(mrb, e2c, mrb_fixnum_value(n), mrb_nil_value());
    if (!mrb_nil_p(c)) {
      mrb_basic_ptr(self)->c = mrb_class_ptr(c);
      str = mrb_str_new_cstr(mrb, strerror(n));
    } else {
      mrb_iv_set(mrb, self, mrb_intern_lit(mrb, "errno"), mrb_fixnum_value(n));
      str = mrb_str_new_cstr(mrb, "Unknown error: ");
      snprintf(buf, sizeof(buf), "%d", (int)n);
      mrb_str_cat2(mrb, str, buf);
    }
  } else {
    str = mrb_str_new_cstr(mrb, "unknown error");
  }
  if (!mrb_nil_p(m)) {
    mrb_str_cat2(mrb, str, " - ");
    mrb_str_append(mrb, str, m);
  }
  mrb_iv_set(mrb, self, mrb_intern_lit(mrb, "mesg"), str);
  return self;
}

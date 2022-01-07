
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_ARGUMENT_ERROR ;


 scalar_t__ mrb_fixnum (int ) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 int mrb_intern_static (int *,char const*,int ) ;
 int mrb_io_fileno (int *,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_symbol_value (int ) ;
 int mrb_type (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
option_to_fd(mrb_state *mrb, mrb_value obj, const char *key)
{
  mrb_value opt = mrb_funcall(mrb, obj, "[]", 1, mrb_symbol_value(mrb_intern_static(mrb, key, strlen(key))));
  if (mrb_nil_p(opt)) {
    return -1;
  }

  switch (mrb_type(opt)) {
    case 129:
      return (int)mrb_fixnum(mrb_io_fileno(mrb, opt));
    case 128:
      return (int)mrb_fixnum(opt);
    default:
      mrb_raise(mrb, E_ARGUMENT_ERROR, "wrong exec redirect action");
      break;
  }
  return -1;
}

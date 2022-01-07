
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RProc {int dummy; } ;
struct RClass {scalar_t__ tt; struct RClass* c; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;
typedef scalar_t__ mrb_bool ;


 int E_NAME_ERROR ;
 scalar_t__ MRB_TT_ICLASS ;
 struct RProc* method_search_vm (int *,struct RClass**,int ) ;
 char* mrb_class_name (int *,struct RClass*) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_raisef (int *,int ,char*,int ,int ) ;
 int mrb_respond_to (int *,int ,int ) ;
 int mrb_str_new_static (int *,char const*,int ) ;
 int mrb_sym2str (int *,int ) ;
 int mrb_symbol_value (int ) ;
 int mrb_test (int ) ;
 int mrb_true_value () ;
 int strlen (char const*) ;

__attribute__((used)) static void
mrb_search_method_owner(mrb_state *mrb, struct RClass *c, mrb_value obj, mrb_sym name, struct RClass **owner, struct RProc **proc, mrb_bool unbound)
{
  mrb_value ret;
  const char *s;

  *owner = c;
  *proc = method_search_vm(mrb, owner, name);
  if (!*proc) {
    if (unbound) {
      goto name_error;
    }
    if (!mrb_respond_to(mrb, obj, mrb_intern_lit(mrb, "respond_to_missing?"))) {
      goto name_error;
    }
    ret = mrb_funcall(mrb, obj, "respond_to_missing?", 2, mrb_symbol_value(name), mrb_true_value());
    if (!mrb_test(ret)) {
      goto name_error;
    }
    *owner = c;
  }

  while ((*owner)->tt == MRB_TT_ICLASS)
    *owner = (*owner)->c;

  return;

name_error:
  s = mrb_class_name(mrb, c);
  mrb_raisef(
    mrb, E_NAME_ERROR,
    "undefined method `%S' for class `%S'",
    mrb_sym2str(mrb, name),
    mrb_str_new_static(mrb, s, strlen(s))
  );
}

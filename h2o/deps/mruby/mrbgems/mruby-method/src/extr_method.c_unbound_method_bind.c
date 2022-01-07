
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RObject {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int E_TYPE_ERROR ;
 scalar_t__ MRB_TT_MODULE ;
 scalar_t__ MRB_TT_SCLASS ;
 struct RObject* method_object_alloc (int *,int ) ;
 int mrb_class_get (int *,char*) ;
 char* mrb_class_name (int *,scalar_t__) ;
 scalar_t__ mrb_class_ptr (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_get (int *,int ,int ) ;
 scalar_t__ mrb_obj_class (int *,int ) ;
 int mrb_obj_is_kind_of (int *,int ,scalar_t__) ;
 int mrb_obj_iv_set (int *,struct RObject*,int ,int ) ;
 int mrb_obj_value (struct RObject*) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new_static (int *,char const*,int ) ;
 scalar_t__ mrb_type (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static mrb_value
unbound_method_bind(mrb_state *mrb, mrb_value self)
{
  struct RObject *me;
  mrb_value owner = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@owner"));
  mrb_value name = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@name"));
  mrb_value proc = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "proc"));
  mrb_value klass = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@klass"));
  mrb_value recv;

  mrb_get_args(mrb, "o", &recv);

  if (mrb_type(owner) != MRB_TT_MODULE &&
      mrb_class_ptr(owner) != mrb_obj_class(mrb, recv) &&
      !mrb_obj_is_kind_of(mrb, recv, mrb_class_ptr(owner))) {
        if (mrb_type(owner) == MRB_TT_SCLASS) {
          mrb_raise(mrb, E_TYPE_ERROR, "singleton method called for a different object");
        } else {
          const char *s = mrb_class_name(mrb, mrb_class_ptr(owner));
          mrb_raisef(mrb, E_TYPE_ERROR, "bind argument must be an instance of %S", mrb_str_new_static(mrb, s, strlen(s)));
        }
  }
  me = method_object_alloc(mrb, mrb_class_get(mrb, "Method"));
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@owner"), owner);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@recv"), recv);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@name"), name);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "proc"), proc);
  mrb_obj_iv_set(mrb, me, mrb_intern_lit(mrb, "@klass"), klass);

  return mrb_obj_value(me);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int iv; } ;
struct RBasic {int dummy; } ;
typedef int mrb_value ;
typedef scalar_t__ mrb_sym ;
typedef int mrb_state ;
typedef int mrb_int ;


 char* RSTRING_PTR (int ) ;
 scalar_t__ detect_outer_loop (int *,struct RClass*) ;
 scalar_t__ find_class_sym (int *,struct RClass*,struct RClass*) ;
 int iv_del (int *,int ,int ,int *) ;
 int iv_put (int *,int ,int ,int ) ;
 char* mrb_class_name (int *,struct RClass*) ;
 int mrb_field_write_barrier_value (int *,struct RBasic*,int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_nil_value () ;
 int mrb_str_cat (int *,int ,char const*,int ) ;
 int mrb_str_cat_cstr (int *,int ,char const*) ;
 int mrb_str_new_capa (int *,int) ;
 char* mrb_sym2name_len (int *,scalar_t__,int *) ;
 struct RClass* outer_class (int *,struct RClass*) ;

mrb_value
mrb_class_find_path(mrb_state *mrb, struct RClass *c)
{
  struct RClass *outer;
  mrb_value path;
  mrb_sym name;
  const char *str;
  mrb_int len;

  if (detect_outer_loop(mrb, c)) return mrb_nil_value();
  outer = outer_class(mrb, c);
  if (outer == ((void*)0)) return mrb_nil_value();
  name = find_class_sym(mrb, outer, c);
  if (name == 0) return mrb_nil_value();
  str = mrb_class_name(mrb, outer);
  path = mrb_str_new_capa(mrb, 40);
  mrb_str_cat_cstr(mrb, path, str);
  mrb_str_cat_cstr(mrb, path, "::");

  str = mrb_sym2name_len(mrb, name, &len);
  mrb_str_cat(mrb, path, str, len);
  if (RSTRING_PTR(path)[0] != '#') {
    iv_del(mrb, c->iv, mrb_intern_lit(mrb, "__outer__"), ((void*)0));
    iv_put(mrb, c->iv, mrb_intern_lit(mrb, "__classname__"), path);
    mrb_field_write_barrier_value(mrb, (struct RBasic*)c, path);
  }
  return path;
}

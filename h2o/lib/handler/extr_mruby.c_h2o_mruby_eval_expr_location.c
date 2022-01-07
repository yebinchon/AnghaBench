
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum_value (int const) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ,int ,int ) ;
 int mrb_nil_value () ;
 int mrb_str_new_cstr (int *,char const*) ;
 int mrb_top_self (int *) ;

mrb_value h2o_mruby_eval_expr_location(mrb_state *mrb, const char *expr, const char *path, const int lineno)
{
    return mrb_funcall(mrb, mrb_top_self(mrb), "eval", 4, mrb_str_new_cstr(mrb, expr), mrb_nil_value(), mrb_str_new_cstr(mrb, path),
                       mrb_fixnum_value(lineno));
}

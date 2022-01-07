
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int * exc; } ;
typedef TYPE_1__ mrb_state ;


 int H2O_ROOT ;
 char* H2O_TO_STR (int ) ;
 int RSTRING_PTR (int ) ;
 char* getenv (char*) ;
 int h2o_fatal (char*,char const*,char*,int ,char const*) ;
 int h2o_mruby_assert (TYPE_1__*) ;
 int h2o_mruby_eval_expr (TYPE_1__*,char*) ;
 int h2o_mruby_new_str (TYPE_1__*,char const*,int ) ;
 int mrb_class_get (TYPE_1__*,char*) ;
 int mrb_gv_set (TYPE_1__*,int ,int ) ;
 int mrb_inspect (TYPE_1__*,int ) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 scalar_t__ mrb_obj_is_instance_of (TYPE_1__*,int ,int ) ;
 int mrb_obj_value (int *) ;
 int strlen (char const*) ;

void h2o_mruby_setup_globals(mrb_state *mrb)
{
    const char *root = getenv("H2O_ROOT");
    if (root == ((void*)0))
        root = H2O_TO_STR(H2O_ROOT);
    mrb_gv_set(mrb, mrb_intern_lit(mrb, "$H2O_ROOT"), h2o_mruby_new_str(mrb, root, strlen(root)));

    h2o_mruby_eval_expr(mrb, "$LOAD_PATH << \"#{$H2O_ROOT}/share/h2o/mruby\"");
    h2o_mruby_assert(mrb);


    h2o_mruby_eval_expr(mrb, "require \"#{$H2O_ROOT}/share/h2o/mruby/preloads.rb\"");
    if (mrb->exc != ((void*)0)) {
        const char *msg = "";
        if (mrb_obj_is_instance_of(mrb, mrb_obj_value(mrb->exc), mrb_class_get(mrb, "LoadError"))) {
            msg = "Did you forget to run `make install`?\n";
        }
        h2o_fatal("an error occurred while loading %s/%s: %s\n%s", root, "share/h2o/mruby/preloads.rb",
                  RSTRING_PTR(mrb_inspect(mrb, mrb_obj_value(mrb->exc))), msg);
    }
}

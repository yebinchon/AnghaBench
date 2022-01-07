
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_5__ {int object_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_NONE () ;
 int MRB_ARGS_REQ (int) ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_module_function (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int test_system ;
 int test_win_p ;

void mrb_mruby_file_stat_gem_test(mrb_state *mrb)
{
  struct RClass *t;

  t = mrb_define_class(mrb, "FileStatTest", mrb->object_class);
  mrb_define_module_function(mrb, t, "system", test_system, MRB_ARGS_REQ(1));
  mrb_define_module_function(mrb, t, "win?", test_win_p, MRB_ARGS_NONE());
}

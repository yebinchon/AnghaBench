
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct RClass {int dummy; } ;
struct TYPE_9__ {int object_class; struct RClass* kernel_module; struct RClass* array_class; } ;
typedef TYPE_1__ mrb_state ;


 int MRB_ARGS_OPT (int) ;
 int MRB_SET_INSTANCE_TT (struct RClass*,int ) ;
 int MRB_TT_DATA ;
 int mrb_ary_sample ;
 int mrb_ary_shuffle ;
 int mrb_ary_shuffle_bang ;
 int mrb_const_set (TYPE_1__*,int ,int ,int ) ;
 struct RClass* mrb_define_class (TYPE_1__*,char*,int ) ;
 int mrb_define_class_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_define_method (TYPE_1__*,struct RClass*,char*,int ,int ) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_obj_new (TYPE_1__*,struct RClass*,int ,int *) ;
 int mrb_obj_value (struct RClass*) ;
 int mrb_random_g_rand ;
 int mrb_random_g_srand ;
 int mrb_random_init ;
 int mrb_random_rand ;
 int mrb_random_srand ;

void mrb_mruby_random_gem_init(mrb_state *mrb)
{
  struct RClass *random;
  struct RClass *array = mrb->array_class;

  mrb_define_method(mrb, mrb->kernel_module, "rand", mrb_random_g_rand, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, mrb->kernel_module, "srand", mrb_random_g_srand, MRB_ARGS_OPT(1));

  random = mrb_define_class(mrb, "Random", mrb->object_class);
  MRB_SET_INSTANCE_TT(random, MRB_TT_DATA);
  mrb_define_class_method(mrb, random, "rand", mrb_random_g_rand, MRB_ARGS_OPT(1));
  mrb_define_class_method(mrb, random, "srand", mrb_random_g_srand, MRB_ARGS_OPT(1));

  mrb_define_method(mrb, random, "initialize", mrb_random_init, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, random, "rand", mrb_random_rand, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, random, "srand", mrb_random_srand, MRB_ARGS_OPT(1));

  mrb_define_method(mrb, array, "shuffle", mrb_ary_shuffle, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, array, "shuffle!", mrb_ary_shuffle_bang, MRB_ARGS_OPT(1));
  mrb_define_method(mrb, array, "sample", mrb_ary_sample, MRB_ARGS_OPT(2));

  mrb_const_set(mrb, mrb_obj_value(random), mrb_intern_lit(mrb, "DEFAULT"),
          mrb_obj_new(mrb, random, 0, ((void*)0)));
}

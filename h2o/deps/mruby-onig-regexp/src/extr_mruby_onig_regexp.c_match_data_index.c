
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;





 int match_data_actual_index (int *,int ,int ) ;
 int match_data_to_a (int *,int ) ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_funcall_argv (int *,int ,int ,int,int *) ;
 int mrb_get_args (int *,char*,int **,int*) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_type (int ) ;

__attribute__((used)) static mrb_value
match_data_index(mrb_state* mrb, mrb_value self) {
  mrb_value src;
  mrb_int argc; mrb_value *argv;

  mrb_get_args(mrb, "*", &argv, &argc);

  src = match_data_to_a(mrb, self);

  if (argc == 1) {
    switch (mrb_type(argv[0])) {
    case 130:
    case 128:
    case 129:
      return mrb_ary_entry(src, match_data_actual_index(mrb, self, argv[0]));
    default: break;
    }
  }

  return mrb_funcall_argv(mrb, src, mrb_intern_lit(mrb, "[]"), argc, argv);
}

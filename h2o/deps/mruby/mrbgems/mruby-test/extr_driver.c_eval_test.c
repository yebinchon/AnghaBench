
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ exc; } ;
typedef TYPE_1__ mrb_state ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int check_error (TYPE_1__*) ;
 int mrb_funcall (TYPE_1__*,int ,char*,int ) ;
 int mrb_print_error (TYPE_1__*) ;
 int mrb_top_self (TYPE_1__*) ;

__attribute__((used)) static int
eval_test(mrb_state *mrb)
{

  mrb_funcall(mrb, mrb_top_self(mrb), "report", 0);

  if (mrb->exc) {
    mrb_print_error(mrb);
    mrb->exc = 0;
    return EXIT_FAILURE;
  }
  else if (!check_error(mrb)) {
    return EXIT_FAILURE;
  }
  return EXIT_SUCCESS;
}

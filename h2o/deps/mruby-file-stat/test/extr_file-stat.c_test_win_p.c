
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_false_value () ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
test_win_p(mrb_state *mrb, mrb_value klass)
{



  return mrb_false_value();

}

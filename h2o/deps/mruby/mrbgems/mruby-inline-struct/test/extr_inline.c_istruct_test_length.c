
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum_value (int ) ;
 int mrb_istruct_size () ;

__attribute__((used)) static mrb_value
istruct_test_length(mrb_state *mrb, mrb_value self)
{
  return mrb_fixnum_value(mrb_istruct_size());
}

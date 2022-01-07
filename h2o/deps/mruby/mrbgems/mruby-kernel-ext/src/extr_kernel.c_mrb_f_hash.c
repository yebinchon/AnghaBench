
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ RARRAY_LEN (int ) ;
 scalar_t__ mrb_array_p (int ) ;
 int mrb_ensure_hash_type (int *,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_hash_new (int *) ;
 scalar_t__ mrb_nil_p (int ) ;

__attribute__((used)) static mrb_value
mrb_f_hash(mrb_state *mrb, mrb_value self)
{
  mrb_value arg;

  mrb_get_args(mrb, "o", &arg);
  if (mrb_nil_p(arg) || (mrb_array_p(arg) && RARRAY_LEN(arg) == 0)) {
    return mrb_hash_new(mrb);
  }
  return mrb_ensure_hash_type(mrb, arg);
}

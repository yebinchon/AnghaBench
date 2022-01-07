
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_bool_value (int) ;
 int mrb_get_args (int *,char*,int*) ;
 int to_int (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_int_anybits(mrb_state *mrb, mrb_value self)
{
  mrb_int n, m;

  mrb_get_args(mrb, "i", &m);
  n = to_int(mrb, self);
  return mrb_bool_value((n & m) != 0);
}

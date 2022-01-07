
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_fixnum (int ) ;
 int mrb_to_int (int *,int ) ;

__attribute__((used)) static inline mrb_int
to_int(mrb_state *mrb, mrb_value x)
{
  x = mrb_to_int(mrb, x);
  return mrb_fixnum(x);
}

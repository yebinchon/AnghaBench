
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int get_random (int *) ;
 int mrb_random_srand (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_random_g_srand(mrb_state *mrb, mrb_value self)
{
  mrb_value random = get_random(mrb);
  return mrb_random_srand(mrb, random);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;


 unsigned long mrb_random_genrand_int32 (int *) ;

__attribute__((used)) static unsigned long
mt_rand(mt_state *t)
{
  return mrb_random_genrand_int32(t);
}

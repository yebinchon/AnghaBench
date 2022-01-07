
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;


 double mrb_random_genrand_real1 (int *) ;

__attribute__((used)) static double
mt_rand_real(mt_state *t)
{
  return mrb_random_genrand_real1(t);
}

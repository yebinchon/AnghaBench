
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mt_state ;


 int mrb_random_init_genrand (int *,unsigned long) ;

__attribute__((used)) static void
mt_srand(mt_state *t, unsigned long seed)
{
  mrb_random_init_genrand(t, seed);
}

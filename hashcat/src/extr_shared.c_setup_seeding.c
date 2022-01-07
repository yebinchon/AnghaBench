
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef scalar_t__ time_t ;


 int srand (unsigned int const) ;
 scalar_t__ time (int *) ;

void setup_seeding (const bool rp_gen_seed_chgd, const u32 rp_gen_seed)
{
  if (rp_gen_seed_chgd == 1)
  {
    srand (rp_gen_seed);
  }
  else
  {
    const time_t ts = time (((void*)0));

    srand ((unsigned int) ts);
  }
}

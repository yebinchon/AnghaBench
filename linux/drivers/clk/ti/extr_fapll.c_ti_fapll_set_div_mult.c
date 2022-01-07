
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int FAPLL_MAIN_MAX_MULT_N ;
 int pr_warn (char*) ;

__attribute__((used)) static int ti_fapll_set_div_mult(unsigned long rate,
     unsigned long parent_rate,
     u32 *pre_div_p, u32 *mult_n)
{






 if (rate < parent_rate) {
  pr_warn("FAPLL main divider rates unsupported\n");
  return -EINVAL;
 }

 *mult_n = rate / parent_rate;
 if (*mult_n > FAPLL_MAIN_MAX_MULT_N)
  return -EINVAL;
 *pre_div_p = 1;

 return 0;
}

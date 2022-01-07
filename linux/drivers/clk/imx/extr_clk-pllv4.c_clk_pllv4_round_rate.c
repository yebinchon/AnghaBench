
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u64 ;
typedef long u32 ;
struct clk_hw {int dummy; } ;


 unsigned long ARRAY_SIZE (unsigned long*) ;
 long DEFAULT_MFD ;
 unsigned long MAX_MFD ;
 int clk_hw_get_name (struct clk_hw*) ;
 int do_div (long,long) ;
 unsigned long* pllv4_mult_table ;
 int pr_warn (char*,int ,unsigned long,unsigned long) ;

__attribute__((used)) static long clk_pllv4_round_rate(struct clk_hw *hw, unsigned long rate,
     unsigned long *prate)
{
 unsigned long parent_rate = *prate;
 unsigned long round_rate, i;
 u32 mfn, mfd = DEFAULT_MFD;
 bool found = 0;
 u64 temp64;

 for (i = 0; i < ARRAY_SIZE(pllv4_mult_table); i++) {
  round_rate = parent_rate * pllv4_mult_table[i];
  if (rate >= round_rate) {
   found = 1;
   break;
  }
 }

 if (!found) {
  pr_warn("%s: unable to round rate %lu, parent rate %lu\n",
   clk_hw_get_name(hw), rate, parent_rate);
  return 0;
 }

 if (parent_rate <= MAX_MFD)
  mfd = parent_rate;

 temp64 = (u64)(rate - round_rate);
 temp64 *= mfd;
 do_div(temp64, parent_rate);
 mfn = temp64;







 if (mfn >= mfd)
  return round_rate;

 temp64 = (u64)parent_rate;
 temp64 *= mfn;
 do_div(temp64, mfd);

 return round_rate + (u32)temp64;
}

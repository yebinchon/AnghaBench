
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_pllv3_vf610_mf {int mfi; int mfd; int mfn; } ;


 int do_div (unsigned long,unsigned long) ;

__attribute__((used)) static struct clk_pllv3_vf610_mf clk_pllv3_vf610_rate_to_mf(
  unsigned long parent_rate, unsigned long rate)
{
 struct clk_pllv3_vf610_mf mf;
 u64 temp64;

 mf.mfi = (rate >= 22 * parent_rate) ? 22 : 20;
 mf.mfd = 0x3fffffff;

 if (rate <= parent_rate * mf.mfi)
  mf.mfn = 0;
 else if (rate >= parent_rate * (mf.mfi + 1))
  mf.mfn = mf.mfd - 1;
 else {

  temp64 = rate - parent_rate * mf.mfi;
  temp64 *= mf.mfd;
  do_div(temp64, parent_rate);
  mf.mfn = temp64;
 }

 return mf;
}

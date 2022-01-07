
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct clk_pllv3_vf610_mf {unsigned long mfn; unsigned long mfi; int mfd; } ;


 int do_div (unsigned long,int ) ;

__attribute__((used)) static unsigned long clk_pllv3_vf610_mf_to_rate(unsigned long parent_rate,
  struct clk_pllv3_vf610_mf mf)
{
 u64 temp64;

 temp64 = parent_rate;
 temp64 *= mf.mfn;
 do_div(temp64, mf.mfd);

 return (parent_rate * mf.mfi) + temp64;
}

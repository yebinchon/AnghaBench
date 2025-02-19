
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;


 int MAX_DIVQ_DIVISOR ;
 int MAX_VCO_FREQ ;
 int MIN_VCO_FREQ ;
 int WARN_ON (int) ;
 int div_u64 (int,scalar_t__) ;
 int ilog2 (int) ;

__attribute__((used)) static u8 __wrpll_calc_divq(u32 target_rate, u64 *vco_rate)
{
 u64 s;
 u8 divq = 0;

 if (!vco_rate) {
  WARN_ON(1);
  goto wcd_out;
 }

 s = div_u64(MAX_VCO_FREQ, target_rate);
 if (s <= 1) {
  divq = 1;
  *vco_rate = MAX_VCO_FREQ;
 } else if (s > MAX_DIVQ_DIVISOR) {
  divq = ilog2(MAX_DIVQ_DIVISOR);
  *vco_rate = MIN_VCO_FREQ;
 } else {
  divq = ilog2(s);
  *vco_rate = (u64)target_rate << divq;
 }

wcd_out:
 return divq;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iproc_pll_vco_param {int ndiv_int; int ndiv_frac; int pdiv; unsigned long rate; } ;


 int EINVAL ;
 int div64_u64 (int,int) ;

__attribute__((used)) static int pll_calc_param(unsigned long target_rate,
   unsigned long parent_rate,
   struct iproc_pll_vco_param *vco_out)
{
 u64 ndiv_int, ndiv_frac, residual;

 ndiv_int = target_rate / parent_rate;

 if (!ndiv_int || (ndiv_int > 255))
  return -EINVAL;

 residual = target_rate - (ndiv_int * parent_rate);
 residual <<= 20;





 residual += (parent_rate / 2);
 ndiv_frac = div64_u64((u64)residual, (u64)parent_rate);

 vco_out->ndiv_int = ndiv_int;
 vco_out->ndiv_frac = ndiv_frac;
 vco_out->pdiv = 1;

 vco_out->rate = vco_out->ndiv_int * parent_rate;
 residual = (u64)vco_out->ndiv_frac * (u64)parent_rate;
 residual >>= 20;
 vco_out->rate += residual;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2rng {int hvapi_major; } ;



 unsigned long HV_EOK ;

 int n2rng_hv_err_trans (unsigned long) ;
 unsigned long sun4v_rng_ctl_read_v2 (unsigned long,unsigned long,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;
 unsigned long sun4v_rng_get_diag_ctl () ;

__attribute__((used)) static int n2rng_try_read_ctl(struct n2rng *np)
{
 unsigned long hv_err;
 unsigned long x;

 if (np->hvapi_major == 1) {
  hv_err = sun4v_rng_get_diag_ctl();
 } else {





  hv_err = sun4v_rng_ctl_read_v2(0UL, ~0UL, &x, &x, &x, &x);
  switch (hv_err) {
  case 128:
  case 129:
   break;
  default:
   hv_err = HV_EOK;
   break;
  }
 }

 return n2rng_hv_err_trans(hv_err);
}

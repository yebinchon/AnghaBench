
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icst_vco {int dummy; } ;
struct clk_icst {scalar_t__ ctype; int params; } ;
struct clk_hw {int dummy; } ;


 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 scalar_t__ ICST_INTEGRATOR_AP_CM ;
 scalar_t__ ICST_INTEGRATOR_AP_PCI ;
 scalar_t__ ICST_INTEGRATOR_AP_SYS ;
 scalar_t__ ICST_INTEGRATOR_CP_CM_CORE ;
 scalar_t__ ICST_INTEGRATOR_CP_CM_MEM ;
 long icst_hz (int ,struct icst_vco) ;
 struct icst_vco icst_hz_to_vco (int ,unsigned long) ;
 struct clk_icst* to_icst (struct clk_hw*) ;

__attribute__((used)) static long icst_round_rate(struct clk_hw *hw, unsigned long rate,
       unsigned long *prate)
{
 struct clk_icst *icst = to_icst(hw);
 struct icst_vco vco;

 if (icst->ctype == ICST_INTEGRATOR_AP_CM ||
     icst->ctype == ICST_INTEGRATOR_CP_CM_CORE) {
  if (rate <= 12000000)
   return 12000000;
  if (rate >= 160000000)
   return 160000000;

  return DIV_ROUND_CLOSEST(rate, 1000000) * 1000000;
 }

 if (icst->ctype == ICST_INTEGRATOR_CP_CM_MEM) {
  if (rate <= 6000000)
   return 6000000;
  if (rate >= 66000000)
   return 66000000;

  return DIV_ROUND_CLOSEST(rate, 500000) * 500000;
 }

 if (icst->ctype == ICST_INTEGRATOR_AP_SYS) {

  if (rate <= 3000000)
   return 3000000;
  if (rate >= 50000000)
   return 5000000;

  return DIV_ROUND_CLOSEST(rate, 250000) * 250000;
 }

 if (icst->ctype == ICST_INTEGRATOR_AP_PCI) {




  if (rate <= 25000000 || rate < 29000000)
   return 25000000;

  return 33000000;
 }

 vco = icst_hz_to_vco(icst->params, rate);
 return icst_hz(icst->params, vco);
}

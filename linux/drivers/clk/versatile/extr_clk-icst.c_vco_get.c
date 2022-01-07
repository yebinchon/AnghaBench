
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct icst_vco {int v; int r; int s; } ;
struct clk_icst {scalar_t__ ctype; int vcoreg_off; int map; } ;


 scalar_t__ ICST_INTEGRATOR_AP_CM ;
 scalar_t__ ICST_INTEGRATOR_AP_PCI ;
 scalar_t__ ICST_INTEGRATOR_AP_SYS ;
 scalar_t__ ICST_INTEGRATOR_CP_CM_CORE ;
 scalar_t__ ICST_INTEGRATOR_CP_CM_MEM ;
 int INTEGRATOR_AP_CM_BITS ;
 int INTEGRATOR_AP_PCI_25_33_MHZ ;
 int INTEGRATOR_AP_SYS_BITS ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int vco_get(struct clk_icst *icst, struct icst_vco *vco)
{
 u32 val;
 int ret;

 ret = regmap_read(icst->map, icst->vcoreg_off, &val);
 if (ret)
  return ret;
 if (icst->ctype == ICST_INTEGRATOR_AP_CM) {
  vco->v = val & INTEGRATOR_AP_CM_BITS;
  vco->r = 22;
  vco->s = 1;
  return 0;
 }
 if (icst->ctype == ICST_INTEGRATOR_AP_SYS) {
  vco->v = val & INTEGRATOR_AP_SYS_BITS;
  vco->r = 46;
  vco->s = 3;
  return 0;
 }
 if (icst->ctype == ICST_INTEGRATOR_AP_PCI) {
  bool divxy = !!(val & INTEGRATOR_AP_PCI_25_33_MHZ);

  vco->v = divxy ? 17 : 14;
  vco->r = divxy ? 22 : 14;
  vco->s = 1;
  return 0;
 }
 if (icst->ctype == ICST_INTEGRATOR_CP_CM_CORE) {
  vco->v = val & 0xFF;
  vco->r = 22;
  vco->s = (val >> 8) & 7;
  return 0;
 }

 if (icst->ctype == ICST_INTEGRATOR_CP_CM_MEM) {
  vco->v = (val >> 12) & 0xFF;
  vco->r = 22;
  vco->s = (val >> 20) & 7;
  return 0;
 }

 vco->v = val & 0x1ff;
 vco->r = (val >> 9) & 0x7f;
 vco->s = (val >> 16) & 03;
 return 0;
}

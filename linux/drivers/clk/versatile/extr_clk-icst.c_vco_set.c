
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct icst_vco {int v; int s; int r; } ;
struct clk_icst {int ctype; int lockreg_off; int map; int vcoreg_off; } ;






 int INTEGRATOR_AP_CM_BITS ;
 int INTEGRATOR_AP_SYS_BITS ;
 int INTEGRATOR_CP_CM_CORE_BITS ;
 int INTEGRATOR_CP_CM_MEM_BITS ;
 int VERSATILE_AUX_OSC_BITS ;
 int VERSATILE_LOCK_VAL ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int vco_set(struct clk_icst *icst, struct icst_vco vco)
{
 u32 mask;
 u32 val;
 int ret;


 switch (icst->ctype) {
 case 131:
  mask = INTEGRATOR_AP_CM_BITS;
  val = vco.v & 0xFF;
  if (vco.v & 0x100)
   pr_err("ICST error: tried to set bit 8 of VDW\n");
  if (vco.s != 1)
   pr_err("ICST error: tried to use VOD != 1\n");
  if (vco.r != 22)
   pr_err("ICST error: tried to use RDW != 22\n");
  break;
 case 130:
  mask = INTEGRATOR_AP_SYS_BITS;
  val = vco.v & 0xFF;
  if (vco.v & 0x100)
   pr_err("ICST error: tried to set bit 8 of VDW\n");
  if (vco.s != 3)
   pr_err("ICST error: tried to use VOD != 1\n");
  if (vco.r != 46)
   pr_err("ICST error: tried to use RDW != 22\n");
  break;
 case 129:
  mask = INTEGRATOR_CP_CM_CORE_BITS;
  val = (vco.v & 0xFF) | vco.s << 8;
  if (vco.v & 0x100)
   pr_err("ICST error: tried to set bit 8 of VDW\n");
  if (vco.r != 22)
   pr_err("ICST error: tried to use RDW != 22\n");
  break;
 case 128:
  mask = INTEGRATOR_CP_CM_MEM_BITS;
  val = ((vco.v & 0xFF) << 12) | (vco.s << 20);
  if (vco.v & 0x100)
   pr_err("ICST error: tried to set bit 8 of VDW\n");
  if (vco.r != 22)
   pr_err("ICST error: tried to use RDW != 22\n");
  break;
 default:

  mask = VERSATILE_AUX_OSC_BITS;
  val = vco.v | (vco.r << 9) | (vco.s << 16);
  break;
 }

 pr_debug("ICST: new val = 0x%08x\n", val);


 ret = regmap_write(icst->map, icst->lockreg_off, VERSATILE_LOCK_VAL);
 if (ret)
  return ret;
 ret = regmap_update_bits(icst->map, icst->vcoreg_off, mask, val);
 if (ret)
  return ret;

 ret = regmap_write(icst->map, icst->lockreg_off, 0);
 if (ret)
  return ret;
 return 0;
}

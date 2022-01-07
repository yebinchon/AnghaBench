
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct prm_reset_src_map {int reg_shift; int std_shift; } ;
typedef scalar_t__ s32 ;


 int OMAP4_RM_RSTST ;
 scalar_t__ PRM_INSTANCE_UNKNOWN ;
 struct prm_reset_src_map* omap44xx_prm_reset_src_map ;
 int omap4_prm_read_inst_reg (scalar_t__,int ) ;
 scalar_t__ omap4_prmst_get_prm_dev_inst () ;

__attribute__((used)) static u32 omap44xx_prm_read_reset_sources(void)
{
 struct prm_reset_src_map *p;
 u32 r = 0;
 u32 v;
 s32 inst = omap4_prmst_get_prm_dev_inst();

 if (inst == PRM_INSTANCE_UNKNOWN)
  return 0;


 v = omap4_prm_read_inst_reg(inst,
        OMAP4_RM_RSTST);

 p = omap44xx_prm_reset_src_map;
 while (p->reg_shift >= 0 && p->std_shift >= 0) {
  if (v & (1 << p->reg_shift))
   r |= 1 << p->std_shift;
  p++;
 }

 return r;
}

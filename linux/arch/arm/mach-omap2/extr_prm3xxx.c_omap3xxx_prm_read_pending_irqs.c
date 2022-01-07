
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int OCP_MOD ;
 int OMAP3_PRM_IRQENABLE_MPU_OFFSET ;
 int OMAP3_PRM_IRQSTATUS_MPU_OFFSET ;
 unsigned long omap2_prm_read_mod_reg (int ,int ) ;

__attribute__((used)) static void omap3xxx_prm_read_pending_irqs(unsigned long *events)
{
 u32 mask, st;


 mask = omap2_prm_read_mod_reg(OCP_MOD, OMAP3_PRM_IRQENABLE_MPU_OFFSET);
 st = omap2_prm_read_mod_reg(OCP_MOD, OMAP3_PRM_IRQSTATUS_MPU_OFFSET);

 events[0] = mask & st;
}

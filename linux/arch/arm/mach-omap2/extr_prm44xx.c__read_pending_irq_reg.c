
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int OMAP4430_PRM_OCP_SOCKET_INST ;
 int omap4_prm_read_inst_reg (int ,int ) ;

__attribute__((used)) static inline u32 _read_pending_irq_reg(u16 irqen_offs, u16 irqst_offs)
{
 u32 mask, st;


 mask = omap4_prm_read_inst_reg(OMAP4430_PRM_OCP_SOCKET_INST,
           irqen_offs);
 st = omap4_prm_read_inst_reg(OMAP4430_PRM_OCP_SOCKET_INST, irqst_offs);

 return mask & st;
}

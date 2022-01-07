
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s16 ;


 int omap4_prminst_write_inst_reg (int,int ,int ,int ) ;

__attribute__((used)) static void omap44xx_prm_clear_context_loss_flags_old(u8 part, s16 inst,
            u16 idx)
{
 omap4_prminst_write_inst_reg(0xffffffff, part, inst, idx);
}

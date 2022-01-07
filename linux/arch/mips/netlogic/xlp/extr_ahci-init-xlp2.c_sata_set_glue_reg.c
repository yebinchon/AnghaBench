
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int nlm_read_sata_reg (int ,int) ;
 int nlm_write_sata_reg (int ,int,int) ;

__attribute__((used)) static void sata_set_glue_reg(u64 regbase, u32 off, u32 bit)
{
 u32 reg_val;

 reg_val = nlm_read_sata_reg(regbase, off);
 nlm_write_sata_reg(regbase, off, (reg_val | bit));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int nlm_read_sata_reg (int ,int) ;
 int nlm_write_sata_reg (int ,int,int) ;

__attribute__((used)) static void sata_set_glue_reg(uint64_t regbase, uint32_t off, uint32_t bit)
{
 uint32_t reg_val;

 reg_val = nlm_read_sata_reg(regbase, off);
 nlm_write_sata_reg(regbase, off, (reg_val | bit));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kprobe_opcode_t ;


 unsigned int PPC_INST_ADDIS ;
 unsigned int PPC_INST_ORI ;
 unsigned int ___PPC_RA (int) ;
 unsigned int ___PPC_RS (int) ;
 unsigned int ___PPC_RT (int) ;
 int patch_instruction (int *,unsigned int) ;

void patch_imm32_load_insns(unsigned int val, kprobe_opcode_t *addr)
{

 patch_instruction(addr, PPC_INST_ADDIS | ___PPC_RT(4) |
     ((val >> 16) & 0xffff));
 addr++;


 patch_instruction(addr, PPC_INST_ORI | ___PPC_RA(4) |
     ___PPC_RS(4) | (val & 0xffff));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kprobe_opcode_t ;


 unsigned long PPC_INST_ADDIS ;
 unsigned long PPC_INST_ORI ;
 unsigned long PPC_INST_ORIS ;
 unsigned long PPC_INST_RLDICR ;
 unsigned long __PPC_ME64 (int) ;
 unsigned long __PPC_SH64 (int) ;
 unsigned long ___PPC_RA (int) ;
 unsigned long ___PPC_RS (int) ;
 unsigned long ___PPC_RT (int) ;
 int patch_instruction (int *,unsigned long) ;

void patch_imm64_load_insns(unsigned long val, kprobe_opcode_t *addr)
{

 patch_instruction(addr, PPC_INST_ADDIS | ___PPC_RT(3) |
     ((val >> 48) & 0xffff));
 addr++;


 patch_instruction(addr, PPC_INST_ORI | ___PPC_RA(3) |
     ___PPC_RS(3) | ((val >> 32) & 0xffff));
 addr++;


 patch_instruction(addr, PPC_INST_RLDICR | ___PPC_RA(3) |
     ___PPC_RS(3) | __PPC_SH64(32) | __PPC_ME64(31));
 addr++;


 patch_instruction(addr, PPC_INST_ORIS | ___PPC_RA(3) |
     ___PPC_RS(3) | ((val >> 16) & 0xffff));
 addr++;


 patch_instruction(addr, PPC_INST_ORI | ___PPC_RA(3) |
     ___PPC_RS(3) | (val & 0xffff));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int lab; int type; int * addr; } ;


 int R_MIPS_PC16 ;

void uasm_r_mips_pc16(struct uasm_reloc **rel, u32 *addr, int lid)
{
 (*rel)->addr = addr;
 (*rel)->type = R_MIPS_PC16;
 (*rel)->lab = lid;
 (*rel)++;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;


 int uasm_i_beq (int **,unsigned int,unsigned int,int ) ;
 int uasm_r_mips_pc16 (struct uasm_reloc**,int *,int) ;

void uasm_il_beq(u32 **p, struct uasm_reloc **r, unsigned int r1,
     unsigned int r2, int lid)
{
 uasm_r_mips_pc16(r, *p, lid);
 uasm_i_beq(p, r1, r2, 0);
}

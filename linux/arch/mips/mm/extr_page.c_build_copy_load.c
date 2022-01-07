
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int A1 ;
 scalar_t__ cpu_has_64bit_gp_regs ;
 int uasm_i_ld (int **,int,int,int ) ;
 int uasm_i_lw (int **,int,int,int ) ;

__attribute__((used)) static void build_copy_load(u32 **buf, int reg, int off)
{
 if (cpu_has_64bit_gp_regs) {
  uasm_i_ld(buf, reg, off, A1);
 } else {
  uasm_i_lw(buf, reg, off, A1);
 }
}

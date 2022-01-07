
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int A0 ;
 int ZERO ;
 scalar_t__ cpu_has_64bit_gp_regs ;
 scalar_t__ cpu_has_64bit_zero_reg ;
 int uasm_i_sd (int **,int ,int,int ) ;
 int uasm_i_sw (int **,int ,int,int ) ;

__attribute__((used)) static void build_clear_store(u32 **buf, int off)
{
 if (cpu_has_64bit_gp_regs || cpu_has_64bit_zero_reg) {
  uasm_i_sd(buf, ZERO, off, A0);
 } else {
  uasm_i_sw(buf, ZERO, off, A0);
 }
}

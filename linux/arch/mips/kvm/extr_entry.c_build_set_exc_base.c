
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C0_EBASE ;
 int MIPS_EBASE_WG ;
 int UASM_i_MTC0 (int **,unsigned int,int ) ;
 scalar_t__ cpu_has_ebase_wg ;
 int uasm_i_mtc0 (int **,unsigned int,int ) ;
 int uasm_i_ori (int **,unsigned int,unsigned int,int ) ;

__attribute__((used)) static inline void build_set_exc_base(u32 **p, unsigned int reg)
{
 if (cpu_has_ebase_wg) {

  uasm_i_ori(p, reg, reg, MIPS_EBASE_WG);
  UASM_i_MTC0(p, reg, C0_EBASE);
 } else {
  uasm_i_mtc0(p, reg, C0_EBASE);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CONFIG_CPU_LOONGSON3_WORKAROUNDS ;
 scalar_t__ IS_ENABLED (int ) ;
 int UASM_i_LL (int **,unsigned int,int ,unsigned int) ;
 int UASM_i_LW (int **,unsigned int,int ,unsigned int) ;
 scalar_t__ cpu_has_64bits ;
 int uasm_i_ld (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_lld (int **,unsigned int,int ,unsigned int) ;
 int uasm_i_sync (int **,int ) ;

__attribute__((used)) static void
iPTE_LW(u32 **p, unsigned int pte, unsigned int ptr)
{
  UASM_i_LW(p, pte, 0, ptr);

}

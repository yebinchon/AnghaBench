
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C0_ENTRYLO0 ;
 int C0_EPC ;
 int uasm_i_jr (int **,unsigned int) ;
 int uasm_i_mfc0 (int **,unsigned int,int ) ;
 int uasm_i_mtc0 (int **,unsigned int,int ) ;
 int uasm_i_rfe (int **) ;
 int uasm_i_tlbwi (int **) ;

__attribute__((used)) static void
build_r3000_pte_reload_tlbwi(u32 **p, unsigned int pte, unsigned int tmp)
{
 uasm_i_mtc0(p, pte, C0_ENTRYLO0);
 uasm_i_mfc0(p, tmp, C0_EPC);
 uasm_i_tlbwi(p);
 uasm_i_jr(p, tmp);
 uasm_i_rfe(p);
}

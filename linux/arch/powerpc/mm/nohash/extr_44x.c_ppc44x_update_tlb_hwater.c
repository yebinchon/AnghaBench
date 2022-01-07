
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int modify_instruction_site (int *,int,int ) ;
 int patch__tlb_44x_hwater_D ;
 int patch__tlb_44x_hwater_I ;
 int tlb_44x_hwater ;

__attribute__((used)) static void ppc44x_update_tlb_hwater(void)
{





 modify_instruction_site(&patch__tlb_44x_hwater_D, 0xffff, tlb_44x_hwater);
 modify_instruction_site(&patch__tlb_44x_hwater_I, 0xffff, tlb_44x_hwater);
}

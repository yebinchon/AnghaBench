
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NDS32_SR_PFM_CTL ;
 int* PFM_CTL_KS ;
 int* PFM_CTL_KU ;
 int* PFM_CTL_OFFSEL ;
 int* PFM_CTL_OVF ;
 int* PFM_CTL_SEL ;
 int SOFTWARE_EVENT_MASK ;
 int __nds32__mfsr (int ) ;
 int __nds32__mtsr_isb (int,int ) ;
 int get_converted_evet_hw_num (int) ;

__attribute__((used)) static inline void nds32_pfm_write_evtsel(int idx, u32 evnum)
{
 u32 offset = 0;
 u32 ori_val = __nds32__mfsr(NDS32_SR_PFM_CTL);
 u32 ev_mask = 0;
 u32 no_kernel_mask = 0;
 u32 no_user_mask = 0;
 u32 val;

 offset = PFM_CTL_OFFSEL[idx];

 no_kernel_mask = PFM_CTL_KS[idx];
 no_user_mask = PFM_CTL_KU[idx];
 ori_val &= ~no_kernel_mask;
 ori_val &= ~no_user_mask;
 if (evnum & no_kernel_mask)
  ori_val |= no_kernel_mask;

 if (evnum & no_user_mask)
  ori_val |= no_user_mask;


 ev_mask = PFM_CTL_SEL[idx];
 ori_val &= ~ev_mask;
 evnum &= SOFTWARE_EVENT_MASK;


 evnum = get_converted_evet_hw_num(evnum);
 val = ori_val | (evnum << offset);
 val &= ~(PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
 __nds32__mtsr_isb(val, NDS32_SR_PFM_CTL);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int NDS32_SR_PFM_CTL ;
 unsigned int* PFM_CTL_EN ;
 unsigned int* PFM_CTL_OVF ;
 unsigned int __nds32__mfsr (int ) ;
 int __nds32__mtsr_isb (unsigned int,int ) ;

__attribute__((used)) static inline int nds32_pfm_disable_counter(int idx)
{
 unsigned int val = __nds32__mfsr(NDS32_SR_PFM_CTL);
 u32 mask = 0;

 mask = PFM_CTL_EN[idx];
 val &= ~mask;
 val &= ~(PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
 __nds32__mtsr_isb(val, NDS32_SR_PFM_CTL);
 return idx;
}

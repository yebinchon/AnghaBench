
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NDS32_SR_PFMC0 ;
 int NDS32_SR_PFMC1 ;
 int NDS32_SR_PFMC2 ;
 int NDS32_SR_PFM_CTL ;
 int* PFM_CTL_OVF ;
 int __nds32__mtsr (int,int ) ;

__attribute__((used)) static void nds32_pmu_reset(void *info)
{
 u32 val = 0;

 val |= (PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2]);
 __nds32__mtsr(val, NDS32_SR_PFM_CTL);
 __nds32__mtsr(0, NDS32_SR_PFM_CTL);
 __nds32__mtsr(0, NDS32_SR_PFMC0);
 __nds32__mtsr(0, NDS32_SR_PFMC1);
 __nds32__mtsr(0, NDS32_SR_PFMC2);
}

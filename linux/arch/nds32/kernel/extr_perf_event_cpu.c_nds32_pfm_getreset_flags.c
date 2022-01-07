
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NDS32_SR_PFM_CTL ;
 int* PFM_CTL_OVF ;
 int __nds32__mfsr (int ) ;
 int __nds32__mtsr (int,int ) ;

__attribute__((used)) static inline u32 nds32_pfm_getreset_flags(void)
{

 u32 val = __nds32__mfsr(NDS32_SR_PFM_CTL);
 u32 old_val = val;


 u32 ov_flag = PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2];

 __nds32__mtsr(val | ov_flag, NDS32_SR_PFM_CTL);

 return old_val;
}

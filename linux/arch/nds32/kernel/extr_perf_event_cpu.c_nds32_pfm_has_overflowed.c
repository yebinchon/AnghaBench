
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* PFM_CTL_OVF ;

__attribute__((used)) static inline int nds32_pfm_has_overflowed(u32 pfm)
{
 u32 ov_flag = PFM_CTL_OVF[0] | PFM_CTL_OVF[1] | PFM_CTL_OVF[2];

 return pfm & ov_flag;
}

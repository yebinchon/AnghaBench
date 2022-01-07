
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;


 int MSR_F15H_PERF_CTL ;
 int MSR_F15H_PERF_CTR ;
__attribute__((used)) static inline uint32_t get_fam15h_addr(u32 addr)
{
 switch (addr) {
 case 131:
 case 130:
 case 129:
 case 128:
  return MSR_F15H_PERF_CTR + (addr - 131);
 case 135:
 case 134:
 case 133:
 case 132:
  return MSR_F15H_PERF_CTL + (addr - 135);
 default:
  break;
 }

 return addr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;



__attribute__((used)) static inline u64 vmx_control_msr(u32 low, u32 high)
{
 return low | ((u64)high << 32);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int fixed_bits_valid (int ,int ,int ) ;

__attribute__((used)) static inline bool vmx_control_verify(u32 control, u32 low, u32 high)
{
 return fixed_bits_valid(control, low, high);
}

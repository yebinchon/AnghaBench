
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 kvm_apic_calc_x2apic_ldr(u32 id)
{
 return ((id >> 4) << 16) | (1 << (id & 0xf));
}

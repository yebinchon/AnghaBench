
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_regs {int dummy; } ;



__attribute__((used)) static unsigned long num_core_regs(void)
{
 return sizeof(struct kvm_regs) / sizeof(u32);
}

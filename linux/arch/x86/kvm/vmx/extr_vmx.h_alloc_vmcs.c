
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs {int dummy; } ;


 int GFP_KERNEL_ACCOUNT ;
 struct vmcs* alloc_vmcs_cpu (int,int ,int ) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static inline struct vmcs *alloc_vmcs(bool shadow)
{
 return alloc_vmcs_cpu(shadow, raw_smp_processor_id(),
         GFP_KERNEL_ACCOUNT);
}

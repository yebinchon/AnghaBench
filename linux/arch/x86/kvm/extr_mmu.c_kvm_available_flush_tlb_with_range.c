
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlb_remote_flush_with_range; } ;


 TYPE_1__* kvm_x86_ops ;

__attribute__((used)) static inline bool kvm_available_flush_tlb_with_range(void)
{
 return kvm_x86_ops->tlb_remote_flush_with_range;
}

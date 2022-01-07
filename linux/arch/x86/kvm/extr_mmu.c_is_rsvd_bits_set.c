
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu {int guest_rsvd_check; } ;


 int __is_rsvd_bits_set (int *,int ,int) ;

__attribute__((used)) static bool is_rsvd_bits_set(struct kvm_mmu *mmu, u64 gpte, int level)
{
 return __is_rsvd_bits_set(&mmu->guest_rsvd_check, gpte, level);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_page {int write_flooding_count; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void __clear_sp_write_flooding_count(struct kvm_mmu_page *sp)
{
 atomic_set(&sp->write_flooding_count, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hpte_clear_all ) () ;} ;


 TYPE_1__ mmu_hash_ops ;
 int radix__mmu_cleanup_all () ;
 scalar_t__ radix_enabled () ;
 int stub1 () ;

void mmu_cleanup_all(void)
{
 if (radix_enabled())
  radix__mmu_cleanup_all();
 else if (mmu_hash_ops.hpte_clear_all)
  mmu_hash_ops.hpte_clear_all();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfn_t ;


 int KVM_MMU_HASH_SHIFT ;
 int hash_64 (int ,int ) ;

__attribute__((used)) static unsigned kvm_page_table_hashfn(gfn_t gfn)
{
 return hash_64(gfn, KVM_MMU_HASH_SHIFT);
}

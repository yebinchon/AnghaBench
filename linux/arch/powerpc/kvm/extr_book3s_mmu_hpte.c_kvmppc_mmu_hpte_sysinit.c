
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpte_cache {int dummy; } ;


 int hpte_cache ;
 int kmem_cache_create (char*,int,int,int ,int *) ;

int kvmppc_mmu_hpte_sysinit(void)
{

 hpte_cache = kmem_cache_create("kvm-spt", sizeof(struct hpte_cache),
           sizeof(struct hpte_cache), 0, ((void*)0));

 return 0;
}

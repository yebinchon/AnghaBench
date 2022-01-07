
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_slb {int base_page_size; } ;


 int mmu_pagesize (int ) ;

__attribute__((used)) static int kvmppc_mmu_book3s_64_get_pagesize(struct kvmppc_slb *slbe)
{
 return mmu_pagesize(slbe->base_page_size);
}

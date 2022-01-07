
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int num_shared_tlb_pages; int * gtlb_arch; int * shared_tlb_pages; int ** gtlb_priv; int * g2h_tlb1_map; int vcpu; } ;


 int PAGE_SIZE ;
 int kfree (int *) ;
 int kvmppc_core_flush_tlb (int *) ;
 int put_page (int ) ;
 scalar_t__ round_down (uintptr_t,int ) ;
 int set_page_dirty_lock (int ) ;
 int vfree (void*) ;

__attribute__((used)) static void free_gtlb(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 int i;

 kvmppc_core_flush_tlb(&vcpu_e500->vcpu);
 kfree(vcpu_e500->g2h_tlb1_map);
 kfree(vcpu_e500->gtlb_priv[0]);
 kfree(vcpu_e500->gtlb_priv[1]);

 if (vcpu_e500->shared_tlb_pages) {
  vfree((void *)(round_down((uintptr_t)vcpu_e500->gtlb_arch,
       PAGE_SIZE)));

  for (i = 0; i < vcpu_e500->num_shared_tlb_pages; i++) {
   set_page_dirty_lock(vcpu_e500->shared_tlb_pages[i]);
   put_page(vcpu_e500->shared_tlb_pages[i]);
  }

  vcpu_e500->num_shared_tlb_pages = 0;

  kfree(vcpu_e500->shared_tlb_pages);
  vcpu_e500->shared_tlb_pages = ((void*)0);
 } else {
  kfree(vcpu_e500->gtlb_arch);
 }

 vcpu_e500->gtlb_arch = ((void*)0);
}

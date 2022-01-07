
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct page {int dummy; } ;
struct kvmppc_pte {int raddr; } ;
struct kvm_vcpu {int kvm; } ;


 int HW_PAGE_SIZE ;
 int INS_DCBZ ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int get_page (struct page*) ;
 struct page* gfn_to_page (int ,int) ;
 scalar_t__ is_error_page (struct page*) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int put_page (struct page*) ;

__attribute__((used)) static void kvmppc_patch_dcbz(struct kvm_vcpu *vcpu, struct kvmppc_pte *pte)
{
 struct page *hpage;
 u64 hpage_offset;
 u32 *page;
 int i;

 hpage = gfn_to_page(vcpu->kvm, pte->raddr >> PAGE_SHIFT);
 if (is_error_page(hpage))
  return;

 hpage_offset = pte->raddr & ~PAGE_MASK;
 hpage_offset &= ~0xFFFULL;
 hpage_offset /= 4;

 get_page(hpage);
 page = kmap_atomic(hpage);


 for (i=hpage_offset; i < hpage_offset + (HW_PAGE_SIZE / 4); i++)
  if ((be32_to_cpu(page[i]) & 0xff0007ff) == INS_DCBZ)
   page[i] &= cpu_to_be32(0xfffffff7);

 kunmap_atomic(page);
 put_page(hpage);
}

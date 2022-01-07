
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
struct tlbe_ref {int flags; } ;
struct kvmppc_vcpu_e500 {scalar_t__ host_tlb1_nv; int* h2g_tlb1_rmap; unsigned long long* g2h_tlb1_map; TYPE_2__** gtlb_priv; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ ref; } ;


 int E500_TLB_BITMAP ;
 int E500_TLB_VALID ;
 int WARN_ON (int) ;
 scalar_t__ tlb1_max_shadow_size () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int kvmppc_e500_tlb1_map_tlb1(struct kvmppc_vcpu_e500 *vcpu_e500,
         struct tlbe_ref *ref,
         int esel)
{
 unsigned int sesel = vcpu_e500->host_tlb1_nv++;

 if (unlikely(vcpu_e500->host_tlb1_nv >= tlb1_max_shadow_size()))
  vcpu_e500->host_tlb1_nv = 0;

 if (vcpu_e500->h2g_tlb1_rmap[sesel]) {
  unsigned int idx = vcpu_e500->h2g_tlb1_rmap[sesel] - 1;
  vcpu_e500->g2h_tlb1_map[idx] &= ~(1ULL << sesel);
 }

 vcpu_e500->gtlb_priv[1][esel].ref.flags |= E500_TLB_BITMAP;
 vcpu_e500->g2h_tlb1_map[esel] |= (u64)1 << sesel;
 vcpu_e500->h2g_tlb1_rmap[sesel] = esel + 1;
 WARN_ON(!(ref->flags & E500_TLB_VALID));

 return sesel;
}

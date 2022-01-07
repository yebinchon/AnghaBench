
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_vcpu_e500 {scalar_t__ h2g_tlb1_rmap; TYPE_1__* gtlb_params; scalar_t__ g2h_tlb1_map; } ;
struct TYPE_4__ {int entries; } ;
struct TYPE_3__ {int entries; } ;


 TYPE_2__* host_tlb_params ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static void clear_tlb1_bitmap(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 if (vcpu_e500->g2h_tlb1_map)
  memset(vcpu_e500->g2h_tlb1_map, 0,
         sizeof(u64) * vcpu_e500->gtlb_params[1].entries);
 if (vcpu_e500->h2g_tlb1_rmap)
  memset(vcpu_e500->h2g_tlb1_rmap, 0,
         sizeof(unsigned int) * host_tlb_params[1].entries);
}

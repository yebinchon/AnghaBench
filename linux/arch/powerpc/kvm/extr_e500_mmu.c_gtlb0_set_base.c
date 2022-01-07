
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vcpu_e500 {TYPE_1__* gtlb_params; } ;
typedef int gva_t ;
struct TYPE_2__ {int ways; int sets; } ;


 int tlb0_set_base (int ,int ,int ) ;

__attribute__((used)) static int gtlb0_set_base(struct kvmppc_vcpu_e500 *vcpu_e500, gva_t addr)
{
 return tlb0_set_base(addr, vcpu_e500->gtlb_params[0].sets,
        vcpu_e500->gtlb_params[0].ways);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct kvm_s390_sie_block {int ibc; } ;
struct vsie_page {struct kvm_s390_sie_block* scb_o; struct kvm_s390_sie_block scb_s; } ;
struct kvm_vcpu {TYPE_3__* kvm; } ;
typedef scalar_t__ __u64 ;
struct TYPE_8__ {int ibc; } ;
struct TYPE_5__ {scalar_t__ ibc; } ;
struct TYPE_6__ {TYPE_1__ model; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;


 int READ_ONCE (int const) ;
 TYPE_4__ sclp ;

__attribute__((used)) static void prepare_ibc(struct kvm_vcpu *vcpu, struct vsie_page *vsie_page)
{
 struct kvm_s390_sie_block *scb_s = &vsie_page->scb_s;
 struct kvm_s390_sie_block *scb_o = vsie_page->scb_o;

 const uint32_t __new_ibc = scb_o->ibc;
 const uint32_t new_ibc = READ_ONCE(__new_ibc) & 0x0fffU;
 __u64 min_ibc = (sclp.ibc >> 16) & 0x0fffU;

 scb_s->ibc = 0;

 if (vcpu->kvm->arch.model.ibc && new_ibc) {
  scb_s->ibc = new_ibc;

  if (scb_s->ibc < min_ibc)
   scb_s->ibc = min_ibc;

  if (scb_s->ibc > vcpu->kvm->arch.model.ibc)
   scb_s->ibc = vcpu->kvm->arch.model.ibc;
 }
}

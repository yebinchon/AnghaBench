
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
struct TYPE_2__ {int vpid; } ;


 TYPE_1__* to_vmx (struct kvm_vcpu*) ;
 int vpid_sync_context (int) ;
 int vpid_sync_vcpu_addr (int,int ) ;

__attribute__((used)) static void vmx_flush_tlb_gva(struct kvm_vcpu *vcpu, gva_t addr)
{
 int vpid = to_vmx(vcpu)->vpid;

 if (!vpid_sync_vcpu_addr(vpid, addr))
  vpid_sync_context(vpid);






}

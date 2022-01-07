
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int EMULATE_DONE ;
 int get_cur_spid (struct kvm_vcpu*) ;
 int tlbilx_all (struct kvmppc_vcpu_e500*,int,int,int) ;
 int tlbilx_one (struct kvmppc_vcpu_e500*,int,int ) ;
 struct kvmppc_vcpu_e500* to_e500 (struct kvm_vcpu*) ;

int kvmppc_e500_emul_tlbilx(struct kvm_vcpu *vcpu, int type, gva_t ea)
{
 struct kvmppc_vcpu_e500 *vcpu_e500 = to_e500(vcpu);
 int pid = get_cur_spid(vcpu);

 if (type == 0 || type == 1) {
  tlbilx_all(vcpu_e500, 0, pid, type);
  tlbilx_all(vcpu_e500, 1, pid, type);
 } else if (type == 3) {
  tlbilx_one(vcpu_e500, pid, ea);
 }

 return EMULATE_DONE;
}

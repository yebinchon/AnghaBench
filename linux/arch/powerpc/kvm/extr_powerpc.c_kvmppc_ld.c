
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ulong ;
struct kvmppc_pte {int raddr; int eaddr; int may_execute; int may_read; } ;
struct TYPE_9__ {int magic_page_pa; void* shared; } ;
struct TYPE_6__ {int ld; } ;
struct kvm_vcpu {TYPE_5__* kvm; TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_8__ {TYPE_2__* kvm_ops; } ;
struct TYPE_10__ {TYPE_3__ arch; } ;
struct TYPE_7__ {int (* load_from_eaddr ) (struct kvm_vcpu*,int*,void*,int) ;} ;


 int EAGAIN ;
 int EINVAL ;
 int EMULATE_DONE ;
 int EMULATE_DO_MMIO ;
 int ENOEXEC ;
 int EPERM ;
 int KVM_PAM ;
 int MSR_PR ;
 int PAGE_MASK ;
 int XLATE_DATA ;
 int XLATE_INST ;
 int XLATE_READ ;
 scalar_t__ kvm_read_guest (TYPE_5__*,int,void*,int) ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 scalar_t__ kvmppc_supports_magic_page (struct kvm_vcpu*) ;
 int kvmppc_xlate (struct kvm_vcpu*,int,int ,int ,struct kvmppc_pte*) ;
 int memcpy (void*,void*,int) ;
 int stub1 (struct kvm_vcpu*,int*,void*,int) ;

int kvmppc_ld(struct kvm_vcpu *vcpu, ulong *eaddr, int size, void *ptr,
        bool data)
{
 ulong mp_pa = vcpu->arch.magic_page_pa & KVM_PAM & PAGE_MASK;
 struct kvmppc_pte pte;
 int rc = -EINVAL;

 vcpu->stat.ld++;

 if (vcpu->kvm->arch.kvm_ops && vcpu->kvm->arch.kvm_ops->load_from_eaddr)
  rc = vcpu->kvm->arch.kvm_ops->load_from_eaddr(vcpu, eaddr, ptr,
             size);

 if ((!rc) || (rc == -EAGAIN))
  return rc;

 rc = kvmppc_xlate(vcpu, *eaddr, data ? XLATE_DATA : XLATE_INST,
     XLATE_READ, &pte);
 if (rc)
  return rc;

 *eaddr = pte.raddr;

 if (!pte.may_read)
  return -EPERM;

 if (!data && !pte.may_execute)
  return -ENOEXEC;


 if (kvmppc_supports_magic_page(vcpu) && mp_pa &&
     ((pte.raddr & KVM_PAM & PAGE_MASK) == mp_pa) &&
     !(kvmppc_get_msr(vcpu) & MSR_PR)) {
  void *magic = vcpu->arch.shared;
  magic += pte.eaddr & 0xfff;
  memcpy(ptr, magic, size);
  return EMULATE_DONE;
 }

 if (kvm_read_guest(vcpu->kvm, pte.raddr, ptr, size))
  return EMULATE_DO_MMIO;

 return EMULATE_DONE;
}

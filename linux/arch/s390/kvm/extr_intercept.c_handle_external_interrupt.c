
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_11__ {TYPE_5__* sie_block; } ;
struct TYPE_8__ {int exit_external_interrupt; } ;
struct kvm_vcpu {TYPE_4__ arch; TYPE_1__ stat; } ;
struct TYPE_9__ {int code; } ;
struct TYPE_10__ {TYPE_2__ extcall; } ;
struct kvm_s390_irq {TYPE_3__ u; int type; } ;
struct TYPE_13__ {int mask; } ;
typedef TYPE_6__ psw_t ;
struct TYPE_12__ {int eic; int extcpuaddr; } ;


 int EBUSY ;
 int EOPNOTSUPP ;



 int KVM_S390_INT_CLOCK_COMP ;
 int KVM_S390_INT_CPU_TIMER ;
 int KVM_S390_INT_EXTERNAL_CALL ;
 int PSW_MASK_EXT ;
 int __LC_EXT_NEW_PSW ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;
 int read_guest_lc (struct kvm_vcpu*,int ,TYPE_6__*,int) ;

__attribute__((used)) static int handle_external_interrupt(struct kvm_vcpu *vcpu)
{
 u16 eic = vcpu->arch.sie_block->eic;
 struct kvm_s390_irq irq;
 psw_t newpsw;
 int rc;

 vcpu->stat.exit_external_interrupt++;

 rc = read_guest_lc(vcpu, __LC_EXT_NEW_PSW, &newpsw, sizeof(psw_t));
 if (rc)
  return rc;

 if ((eic == 130 || eic == 129) &&
     (newpsw.mask & PSW_MASK_EXT))
  return -EOPNOTSUPP;

 switch (eic) {
 case 130:
  irq.type = KVM_S390_INT_CLOCK_COMP;
  break;
 case 129:
  irq.type = KVM_S390_INT_CPU_TIMER;
  break;
 case 128:
  irq.type = KVM_S390_INT_EXTERNAL_CALL;
  irq.u.extcall.code = vcpu->arch.sie_block->extcpuaddr;
  rc = kvm_s390_inject_vcpu(vcpu, &irq);

  if (rc == -EBUSY)
   return 0;
  return rc;
 default:
  return -EOPNOTSUPP;
 }

 return kvm_s390_inject_vcpu(vcpu, &irq);
}

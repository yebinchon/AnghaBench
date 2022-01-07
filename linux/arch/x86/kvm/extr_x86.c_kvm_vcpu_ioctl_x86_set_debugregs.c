
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr6; int dr7; int db; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_debugregs {int dr6; int dr7; int db; scalar_t__ flags; } ;


 int EINVAL ;
 int kvm_update_dr0123 (struct kvm_vcpu*) ;
 int kvm_update_dr6 (struct kvm_vcpu*) ;
 int kvm_update_dr7 (struct kvm_vcpu*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int kvm_vcpu_ioctl_x86_set_debugregs(struct kvm_vcpu *vcpu,
         struct kvm_debugregs *dbgregs)
{
 if (dbgregs->flags)
  return -EINVAL;

 if (dbgregs->dr6 & ~0xffffffffull)
  return -EINVAL;
 if (dbgregs->dr7 & ~0xffffffffull)
  return -EINVAL;

 memcpy(vcpu->arch.db, dbgregs->db, sizeof(vcpu->arch.db));
 kvm_update_dr0123(vcpu);
 vcpu->arch.dr6 = dbgregs->dr6;
 kvm_update_dr6(vcpu);
 vcpu->arch.dr7 = dbgregs->dr7;
 kvm_update_dr7(vcpu);

 return 0;
}

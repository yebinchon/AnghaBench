
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dr7; int db; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_debugregs {unsigned long dr6; int reserved; scalar_t__ flags; int dr7; int db; } ;


 int kvm_get_dr (struct kvm_vcpu*,int,unsigned long*) ;
 int memcpy (int ,int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void kvm_vcpu_ioctl_x86_get_debugregs(struct kvm_vcpu *vcpu,
          struct kvm_debugregs *dbgregs)
{
 unsigned long val;

 memcpy(dbgregs->db, vcpu->arch.db, sizeof(vcpu->arch.db));
 kvm_get_dr(vcpu, 6, &val);
 dbgregs->dr6 = val;
 dbgregs->dr7 = vcpu->arch.dr7;
 dbgregs->flags = 0;
 memset(&dbgregs->reserved, 0, sizeof(dbgregs->reserved));
}

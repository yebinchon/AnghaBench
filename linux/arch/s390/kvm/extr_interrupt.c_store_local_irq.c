
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int prefix; int stop; int extcall; int ext; int pgm; int mchk; } ;
struct kvm_s390_local_interrupt {TYPE_2__ irq; } ;
struct TYPE_3__ {int prefix; int stop; int extcall; int ext; int pgm; int mchk; } ;
struct kvm_s390_irq {TYPE_1__ u; int type; } ;
 int KVM_S390_INT_CLOCK_COMP ;
 int KVM_S390_INT_CPU_TIMER ;
 int KVM_S390_INT_EXTERNAL_CALL ;
 int KVM_S390_INT_PFAULT_INIT ;
 int KVM_S390_MCHK ;
 int KVM_S390_PROGRAM_INT ;
 int KVM_S390_RESTART ;
 int KVM_S390_SIGP_SET_PREFIX ;
 int KVM_S390_SIGP_STOP ;

__attribute__((used)) static void store_local_irq(struct kvm_s390_local_interrupt *li,
       struct kvm_s390_irq *irq,
       unsigned long irq_type)
{
 switch (irq_type) {
 case 134:
 case 133:
  irq->type = KVM_S390_MCHK;
  irq->u.mchk = li->irq.mchk;
  break;
 case 131:
  irq->type = KVM_S390_PROGRAM_INT;
  irq->u.pgm = li->irq.pgm;
  break;
 case 132:
  irq->type = KVM_S390_INT_PFAULT_INIT;
  irq->u.ext = li->irq.ext;
  break;
 case 135:
  irq->type = KVM_S390_INT_EXTERNAL_CALL;
  irq->u.extcall = li->irq.extcall;
  break;
 case 137:
  irq->type = KVM_S390_INT_CLOCK_COMP;
  break;
 case 136:
  irq->type = KVM_S390_INT_CPU_TIMER;
  break;
 case 128:
  irq->type = KVM_S390_SIGP_STOP;
  irq->u.stop = li->irq.stop;
  break;
 case 130:
  irq->type = KVM_S390_RESTART;
  break;
 case 129:
  irq->type = KVM_S390_SIGP_SET_PREFIX;
  irq->u.prefix = li->irq.prefix;
  break;
 }
}

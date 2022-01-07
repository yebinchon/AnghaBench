
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_16__ {TYPE_7__* sie_block; } ;
struct TYPE_9__ {int instruction_tsch; } ;
struct kvm_vcpu {TYPE_8__ arch; TYPE_6__* run; int kvm; TYPE_1__ stat; } ;
struct TYPE_12__ {int io_int_word; int io_int_parm; int subchannel_nr; int subchannel_id; } ;
struct kvm_s390_interrupt_info {TYPE_4__ io; } ;
struct TYPE_15__ {int ipb; } ;
struct TYPE_13__ {int dequeued; int ipb; int io_int_word; int io_int_parm; int subchannel_nr; int subchannel_id; } ;
struct TYPE_10__ {int * gprs; } ;
struct TYPE_11__ {TYPE_2__ regs; } ;
struct TYPE_14__ {TYPE_5__ s390_tsch; int exit_reason; TYPE_3__ s; } ;


 int EREMOTE ;
 int KVM_EXIT_S390_TSCH ;
 int kfree (struct kvm_s390_interrupt_info*) ;
 struct kvm_s390_interrupt_info* kvm_s390_get_io_int (int ,int const,int ) ;

__attribute__((used)) static int handle_tsch(struct kvm_vcpu *vcpu)
{
 struct kvm_s390_interrupt_info *inti = ((void*)0);
 const u64 isc_mask = 0xffUL << 24;

 vcpu->stat.instruction_tsch++;


 if (vcpu->run->s.regs.gprs[1])
  inti = kvm_s390_get_io_int(vcpu->kvm, isc_mask,
        vcpu->run->s.regs.gprs[1]);
 vcpu->run->exit_reason = KVM_EXIT_S390_TSCH;
 vcpu->run->s390_tsch.dequeued = !!inti;
 if (inti) {
  vcpu->run->s390_tsch.subchannel_id = inti->io.subchannel_id;
  vcpu->run->s390_tsch.subchannel_nr = inti->io.subchannel_nr;
  vcpu->run->s390_tsch.io_int_parm = inti->io.io_int_parm;
  vcpu->run->s390_tsch.io_int_word = inti->io.io_int_word;
 }
 vcpu->run->s390_tsch.ipb = vcpu->arch.sie_block->ipb;
 kfree(inti);
 return -EREMOTE;
}

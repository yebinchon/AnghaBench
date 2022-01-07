
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int vcpu_id; } ;
struct vcpu_svm {TYPE_3__ vcpu; TYPE_1__* vmcb; } ;
struct TYPE_5__ {int exit_info_1; int exit_info_2; } ;
struct TYPE_4__ {TYPE_2__ control; } ;


 int AVIC_UNACCEL_ACCESS_OFFSET_MASK ;
 int AVIC_UNACCEL_ACCESS_VECTOR_MASK ;
 int AVIC_UNACCEL_ACCESS_WRITE_MASK ;
 int WARN_ONCE (int,char*) ;
 int avic_unaccel_trap_write (struct vcpu_svm*) ;
 int is_avic_unaccelerated_access_trap (int) ;
 int kvm_emulate_instruction (TYPE_3__*,int ) ;
 int trace_kvm_avic_unaccelerated_access (int ,int,int,int,int) ;

__attribute__((used)) static int avic_unaccelerated_access_interception(struct vcpu_svm *svm)
{
 int ret = 0;
 u32 offset = svm->vmcb->control.exit_info_1 &
       AVIC_UNACCEL_ACCESS_OFFSET_MASK;
 u32 vector = svm->vmcb->control.exit_info_2 &
       AVIC_UNACCEL_ACCESS_VECTOR_MASK;
 bool write = (svm->vmcb->control.exit_info_1 >> 32) &
       AVIC_UNACCEL_ACCESS_WRITE_MASK;
 bool trap = is_avic_unaccelerated_access_trap(offset);

 trace_kvm_avic_unaccelerated_access(svm->vcpu.vcpu_id, offset,
         trap, write, vector);
 if (trap) {

  WARN_ONCE(!write, "svm: Handling trap read.\n");
  ret = avic_unaccel_trap_write(svm);
 } else {

  ret = kvm_emulate_instruction(&svm->vcpu, 0);
 }

 return ret;
}

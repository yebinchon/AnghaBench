
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {int smm_inside_nmi; int latched_init; int pending; int smm; } ;
struct TYPE_16__ {int pending; scalar_t__ pad; int masked; int injected; } ;
struct TYPE_15__ {int injected; int shadow; scalar_t__ soft; int nr; } ;
struct TYPE_12__ {int error_code; int has_error_code; int nr; int injected; int pending; } ;
struct kvm_vcpu_events {int flags; int reserved; TYPE_7__ smi; scalar_t__ sipi_vector; TYPE_5__ nmi; TYPE_4__ interrupt; int exception_payload; int exception_has_payload; TYPE_1__ exception; } ;
struct TYPE_14__ {int nr; int soft; scalar_t__ injected; } ;
struct TYPE_13__ {int payload; int has_payload; int error_code; int has_error_code; int nr; int pending; int injected; } ;
struct TYPE_17__ {scalar_t__ nmi_pending; int hflags; int smi_pending; int nmi_injected; TYPE_3__ interrupt; TYPE_2__ exception; } ;
struct kvm_vcpu {TYPE_9__* kvm; TYPE_6__ arch; } ;
struct TYPE_19__ {scalar_t__ exception_payload_enabled; } ;
struct TYPE_20__ {TYPE_8__ arch; } ;
struct TYPE_11__ {int (* get_nmi_mask ) (struct kvm_vcpu*) ;int (* get_interrupt_shadow ) (struct kvm_vcpu*) ;} ;


 int HF_SMM_INSIDE_NMI_MASK ;
 int KVM_VCPUEVENT_VALID_NMI_PENDING ;
 int KVM_VCPUEVENT_VALID_PAYLOAD ;
 int KVM_VCPUEVENT_VALID_SHADOW ;
 int KVM_VCPUEVENT_VALID_SMM ;
 int is_smm (struct kvm_vcpu*) ;
 scalar_t__ kvm_exception_is_soft (int ) ;
 int kvm_lapic_latched_init (struct kvm_vcpu*) ;
 TYPE_10__* kvm_x86_ops ;
 int memset (int *,int ,int) ;
 int process_nmi (struct kvm_vcpu*) ;
 int stub1 (struct kvm_vcpu*) ;
 int stub2 (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_vcpu_ioctl_x86_get_vcpu_events(struct kvm_vcpu *vcpu,
            struct kvm_vcpu_events *events)
{
 process_nmi(vcpu);







 if (kvm_exception_is_soft(vcpu->arch.exception.nr)) {
  events->exception.injected = 0;
  events->exception.pending = 0;
 } else {
  events->exception.injected = vcpu->arch.exception.injected;
  events->exception.pending = vcpu->arch.exception.pending;





  if (!vcpu->kvm->arch.exception_payload_enabled)
   events->exception.injected |=
    vcpu->arch.exception.pending;
 }
 events->exception.nr = vcpu->arch.exception.nr;
 events->exception.has_error_code = vcpu->arch.exception.has_error_code;
 events->exception.error_code = vcpu->arch.exception.error_code;
 events->exception_has_payload = vcpu->arch.exception.has_payload;
 events->exception_payload = vcpu->arch.exception.payload;

 events->interrupt.injected =
  vcpu->arch.interrupt.injected && !vcpu->arch.interrupt.soft;
 events->interrupt.nr = vcpu->arch.interrupt.nr;
 events->interrupt.soft = 0;
 events->interrupt.shadow = kvm_x86_ops->get_interrupt_shadow(vcpu);

 events->nmi.injected = vcpu->arch.nmi_injected;
 events->nmi.pending = vcpu->arch.nmi_pending != 0;
 events->nmi.masked = kvm_x86_ops->get_nmi_mask(vcpu);
 events->nmi.pad = 0;

 events->sipi_vector = 0;

 events->smi.smm = is_smm(vcpu);
 events->smi.pending = vcpu->arch.smi_pending;
 events->smi.smm_inside_nmi =
  !!(vcpu->arch.hflags & HF_SMM_INSIDE_NMI_MASK);
 events->smi.latched_init = kvm_lapic_latched_init(vcpu);

 events->flags = (KVM_VCPUEVENT_VALID_NMI_PENDING
    | KVM_VCPUEVENT_VALID_SHADOW
    | KVM_VCPUEVENT_VALID_SMM);
 if (vcpu->kvm->arch.exception_payload_enabled)
  events->flags |= KVM_VCPUEVENT_VALID_PAYLOAD;

 memset(&events->reserved, 0, sizeof(events->reserved));
}

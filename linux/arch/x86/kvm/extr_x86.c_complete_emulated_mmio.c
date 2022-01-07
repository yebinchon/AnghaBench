
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* complete_userspace_io ) (struct kvm_vcpu*) ;} ;
struct kvm_vcpu {size_t mmio_cur_fragment; size_t mmio_nr_fragments; int mmio_read_completed; TYPE_2__ arch; scalar_t__ mmio_is_write; scalar_t__ mmio_needed; struct kvm_mmio_fragment* mmio_fragments; struct kvm_run* run; } ;
struct TYPE_3__ {unsigned int data; unsigned int phys_addr; unsigned int len; scalar_t__ is_write; } ;
struct kvm_run {TYPE_1__ mmio; int exit_reason; } ;
struct kvm_mmio_fragment {int len; unsigned int data; unsigned int gpa; } ;


 int BUG_ON (int) ;
 int KVM_EXIT_MMIO ;
 int complete_emulated_io (struct kvm_vcpu*) ;
 int memcpy (unsigned int,unsigned int,unsigned int) ;
 unsigned int min (unsigned int,int) ;

__attribute__((used)) static int complete_emulated_mmio(struct kvm_vcpu *vcpu)
{
 struct kvm_run *run = vcpu->run;
 struct kvm_mmio_fragment *frag;
 unsigned len;

 BUG_ON(!vcpu->mmio_needed);


 frag = &vcpu->mmio_fragments[vcpu->mmio_cur_fragment];
 len = min(8u, frag->len);
 if (!vcpu->mmio_is_write)
  memcpy(frag->data, run->mmio.data, len);

 if (frag->len <= 8) {

  frag++;
  vcpu->mmio_cur_fragment++;
 } else {

  frag->data += len;
  frag->gpa += len;
  frag->len -= len;
 }

 if (vcpu->mmio_cur_fragment >= vcpu->mmio_nr_fragments) {
  vcpu->mmio_needed = 0;


  if (vcpu->mmio_is_write)
   return 1;
  vcpu->mmio_read_completed = 1;
  return complete_emulated_io(vcpu);
 }

 run->exit_reason = KVM_EXIT_MMIO;
 run->mmio.phys_addr = frag->gpa;
 if (vcpu->mmio_is_write)
  memcpy(run->mmio.data, frag->data, min(8u, frag->len));
 run->mmio.len = min(8u, frag->len);
 run->mmio.is_write = vcpu->mmio_is_write;
 vcpu->arch.complete_userspace_io = complete_emulated_mmio;
 return 0;
}

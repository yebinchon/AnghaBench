
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* run; struct kvm_mmio_fragment* mmio_fragments; } ;
struct kvm_mmio_fragment {int len; int data; } ;
typedef int gpa_t ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ mmio; } ;


 int X86EMUL_CONTINUE ;
 int memcpy (int ,int ,int ) ;
 int min (unsigned int,int ) ;

__attribute__((used)) static int write_exit_mmio(struct kvm_vcpu *vcpu, gpa_t gpa,
      void *val, int bytes)
{
 struct kvm_mmio_fragment *frag = &vcpu->mmio_fragments[0];

 memcpy(vcpu->run->mmio.data, frag->data, min(8u, frag->len));
 return X86EMUL_CONTINUE;
}

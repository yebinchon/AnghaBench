
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_exception {int dummy; } ;
struct TYPE_2__ {int l1tf_flush_l1d; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gva_t ;


 int PFERR_WRITE_MASK ;
 int kvm_write_guest_virt_helper (int ,void*,unsigned int,struct kvm_vcpu*,int ,struct x86_exception*) ;
 int memset (struct x86_exception*,int ,int) ;

int kvm_write_guest_virt_system(struct kvm_vcpu *vcpu, gva_t addr, void *val,
    unsigned int bytes, struct x86_exception *exception)
{

 vcpu->arch.l1tf_flush_l1d = 1;







 memset(exception, 0, sizeof(*exception));
 return kvm_write_guest_virt_helper(addr, val, bytes, vcpu,
        PFERR_WRITE_MASK, exception);
}

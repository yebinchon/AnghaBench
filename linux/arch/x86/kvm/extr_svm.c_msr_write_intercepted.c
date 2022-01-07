
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {size_t* msrpm; } ;
struct TYPE_4__ {size_t* msrpm; TYPE_1__ nested; } ;


 int BUG_ON (int) ;
 size_t MSR_INVALID ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 size_t svm_msrpm_offset (unsigned int) ;
 int test_bit (int,unsigned long*) ;
 TYPE_2__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static bool msr_write_intercepted(struct kvm_vcpu *vcpu, unsigned msr)
{
 u8 bit_write;
 unsigned long tmp;
 u32 offset;
 u32 *msrpm;

 msrpm = is_guest_mode(vcpu) ? to_svm(vcpu)->nested.msrpm:
          to_svm(vcpu)->msrpm;

 offset = svm_msrpm_offset(msr);
 bit_write = 2 * (msr & 0x0f) + 1;
 tmp = msrpm[offset];

 BUG_ON(offset == MSR_INVALID);

 return !!test_bit(bit_write, &tmp);
}

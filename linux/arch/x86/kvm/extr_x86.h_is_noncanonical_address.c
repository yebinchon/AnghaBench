
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ get_canonical (scalar_t__,int ) ;
 int vcpu_virt_addr_bits (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool is_noncanonical_address(u64 la, struct kvm_vcpu *vcpu)
{



 return 0;

}

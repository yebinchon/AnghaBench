
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;


 int back_to_back_c0_hazard () ;
 scalar_t__ read_c0_count () ;
 int write_c0_gtoffset (scalar_t__) ;
 int write_gc0_cause (scalar_t__) ;

__attribute__((used)) static void _kvm_vz_restore_stimer(struct kvm_vcpu *vcpu, u32 compare,
       u32 cause)
{




 write_c0_gtoffset(compare - read_c0_count());

 back_to_back_c0_hazard();
 write_gc0_cause(cause);
}

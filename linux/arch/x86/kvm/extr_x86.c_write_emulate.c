
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int emulator_write_phys (struct kvm_vcpu*,int ,void*,int) ;

__attribute__((used)) static int write_emulate(struct kvm_vcpu *vcpu, gpa_t gpa,
    void *val, int bytes)
{
 return emulator_write_phys(vcpu, gpa, val, bytes);
}

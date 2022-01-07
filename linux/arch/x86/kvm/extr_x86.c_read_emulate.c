
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int kvm_vcpu_read_guest (struct kvm_vcpu*,int ,void*,int) ;

__attribute__((used)) static int read_emulate(struct kvm_vcpu *vcpu, gpa_t gpa,
   void *val, int bytes)
{
 return !kvm_vcpu_read_guest(vcpu, gpa, val, bytes);
}

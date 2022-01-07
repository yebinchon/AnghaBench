
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gpa_t ;


 int kvm_page_track_write (struct kvm_vcpu*,int ,void const*,int) ;
 int kvm_vcpu_write_guest (struct kvm_vcpu*,int ,void const*,int) ;

int emulator_write_phys(struct kvm_vcpu *vcpu, gpa_t gpa,
   const void *val, int bytes)
{
 int ret;

 ret = kvm_vcpu_write_guest(vcpu, gpa, val, bytes);
 if (ret < 0)
  return 0;
 kvm_page_track_write(vcpu, gpa, val, bytes);
 return 1;
}

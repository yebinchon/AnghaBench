
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int debugfs_dentry; } ;


 int debugfs_create_file (char*,int,int ,struct kvm_vcpu*,int *) ;
 scalar_t__ kvm_has_tsc_control ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;
 int vcpu_timer_advance_ns_fops ;
 int vcpu_tsc_offset_fops ;
 int vcpu_tsc_scaling_fops ;
 int vcpu_tsc_scaling_frac_fops ;

void kvm_arch_create_vcpu_debugfs(struct kvm_vcpu *vcpu)
{
 debugfs_create_file("tsc-offset", 0444, vcpu->debugfs_dentry, vcpu,
       &vcpu_tsc_offset_fops);

 if (lapic_in_kernel(vcpu))
  debugfs_create_file("lapic_timer_advance_ns", 0444,
        vcpu->debugfs_dentry, vcpu,
        &vcpu_timer_advance_ns_fops);

 if (kvm_has_tsc_control) {
  debugfs_create_file("tsc-scaling-ratio", 0444,
        vcpu->debugfs_dentry, vcpu,
        &vcpu_tsc_scaling_fops);
  debugfs_create_file("tsc-scaling-ratio-frac-bits", 0444,
        vcpu->debugfs_dentry, vcpu,
        &vcpu_tsc_scaling_frac_fops);
 }
}

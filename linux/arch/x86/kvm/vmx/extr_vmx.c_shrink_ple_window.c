
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {unsigned int ple_window; int ple_window_dirty; } ;
struct kvm_vcpu {int vcpu_id; } ;


 unsigned int __shrink_ple_window (unsigned int,int ,int ,int ) ;
 int ple_window ;
 int ple_window_shrink ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int trace_kvm_ple_window_update (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void shrink_ple_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 unsigned int old = vmx->ple_window;

 vmx->ple_window = __shrink_ple_window(old, ple_window,
           ple_window_shrink,
           ple_window);

 if (vmx->ple_window != old) {
  vmx->ple_window_dirty = 1;
  trace_kvm_ple_window_update(vcpu->vcpu_id,
         vmx->ple_window, old);
 }
}

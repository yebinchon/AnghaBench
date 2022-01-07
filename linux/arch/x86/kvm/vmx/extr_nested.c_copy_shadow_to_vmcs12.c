
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcs12 {int dummy; } ;
struct vmcs {int dummy; } ;
struct TYPE_4__ {struct vmcs* shadow_vmcs; } ;
struct vcpu_vmx {TYPE_1__* loaded_vmcs; int vcpu; TYPE_2__ vmcs01; } ;
struct shadow_vmcs_field {int offset; int encoding; } ;
struct TYPE_3__ {struct vmcs* vmcs; } ;


 scalar_t__ WARN_ON (int) ;
 unsigned long __vmcs_readl (int ) ;
 struct vmcs12* get_vmcs12 (int *) ;
 int max_shadow_read_write_fields ;
 int preempt_disable () ;
 int preempt_enable () ;
 struct shadow_vmcs_field* shadow_read_write_fields ;
 int vmcs12_write_any (struct vmcs12*,int ,int ,unsigned long) ;
 int vmcs_clear (struct vmcs*) ;
 int vmcs_load (struct vmcs*) ;

__attribute__((used)) static void copy_shadow_to_vmcs12(struct vcpu_vmx *vmx)
{
 struct vmcs *shadow_vmcs = vmx->vmcs01.shadow_vmcs;
 struct vmcs12 *vmcs12 = get_vmcs12(&vmx->vcpu);
 struct shadow_vmcs_field field;
 unsigned long val;
 int i;

 if (WARN_ON(!shadow_vmcs))
  return;

 preempt_disable();

 vmcs_load(shadow_vmcs);

 for (i = 0; i < max_shadow_read_write_fields; i++) {
  field = shadow_read_write_fields[i];
  val = __vmcs_readl(field.encoding);
  vmcs12_write_any(vmcs12, field.encoding, field.offset, val);
 }

 vmcs_clear(shadow_vmcs);
 vmcs_load(vmx->loaded_vmcs->vmcs);

 preempt_enable();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcs_host_state {int es_sel; int ds_sel; int ldt_sel; int gs_base; int fs_base; int gs_sel; int fs_sel; } ;
struct vcpu_vmx {TYPE_1__* loaded_vmcs; int guest_state_loaded; } ;
struct loaded_vmcs {struct vmcs_host_state host_state; } ;
struct TYPE_2__ {struct vmcs_host_state host_state; } ;


 scalar_t__ unlikely (int) ;
 int vmx_set_host_fs_gs (struct vmcs_host_state*,int ,int ,int ,int ) ;

__attribute__((used)) static void vmx_sync_vmcs_host_state(struct vcpu_vmx *vmx,
         struct loaded_vmcs *prev)
{
 struct vmcs_host_state *dest, *src;

 if (unlikely(!vmx->guest_state_loaded))
  return;

 src = &prev->host_state;
 dest = &vmx->loaded_vmcs->host_state;

 vmx_set_host_fs_gs(dest, src->fs_sel, src->gs_sel, src->fs_base, src->gs_base);
 dest->ldt_sel = src->ldt_sel;




}

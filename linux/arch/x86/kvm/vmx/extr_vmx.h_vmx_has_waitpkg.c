
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int secondary_exec_control; } ;


 int SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE ;

__attribute__((used)) static inline bool vmx_has_waitpkg(struct vcpu_vmx *vmx)
{
 return vmx->secondary_exec_control &
  SECONDARY_EXEC_ENABLE_USR_WAIT_PAUSE;
}

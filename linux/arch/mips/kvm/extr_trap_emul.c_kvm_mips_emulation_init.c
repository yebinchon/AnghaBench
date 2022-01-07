
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mips_callbacks {int dummy; } ;


 struct kvm_mips_callbacks kvm_trap_emul_callbacks ;

int kvm_mips_emulation_init(struct kvm_mips_callbacks **install_callbacks)
{
 *install_callbacks = &kvm_trap_emul_callbacks;
 return 0;
}

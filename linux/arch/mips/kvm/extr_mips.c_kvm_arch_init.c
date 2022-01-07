
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int kvm_err (char*) ;
 scalar_t__ kvm_mips_callbacks ;
 int kvm_mips_emulation_init (scalar_t__*) ;

int kvm_arch_init(void *opaque)
{
 if (kvm_mips_callbacks) {
  kvm_err("kvm: module already exists\n");
  return -EEXIST;
 }

 return kvm_mips_emulation_init(&kvm_mips_callbacks);
}

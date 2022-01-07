
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int KVM_REG_ARCH_MASK ;
 int KVM_REG_ARM_CORE ;
 int KVM_REG_SIZE_MASK ;

__attribute__((used)) static u64 core_reg_offset_from_id(u64 id)
{
 return id & ~(KVM_REG_ARCH_MASK | KVM_REG_SIZE_MASK | KVM_REG_ARM_CORE);
}

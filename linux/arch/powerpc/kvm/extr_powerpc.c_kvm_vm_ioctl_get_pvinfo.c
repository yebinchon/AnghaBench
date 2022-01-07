
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_ppc_pvinfo {int flags; void** hcall; } ;


 int KVM_PPC_PVINFO_FLAGS_EV_IDLE ;
 int KVM_SC_MAGIC_R0 ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static int kvm_vm_ioctl_get_pvinfo(struct kvm_ppc_pvinfo *pvinfo)
{
 u32 inst_nop = 0x60000000;







 u32 inst_lis = 0x3c000000;
 u32 inst_ori = 0x60000000;
 u32 inst_sc = 0x44000002;
 u32 inst_imm_mask = 0xffff;
 pvinfo->hcall[0] = cpu_to_be32(inst_lis | ((KVM_SC_MAGIC_R0 >> 16) & inst_imm_mask));
 pvinfo->hcall[1] = cpu_to_be32(inst_ori | (KVM_SC_MAGIC_R0 & inst_imm_mask));
 pvinfo->hcall[2] = cpu_to_be32(inst_sc);
 pvinfo->hcall[3] = cpu_to_be32(inst_nop);


 pvinfo->flags = KVM_PPC_PVINFO_FLAGS_EV_IDLE;

 return 0;
}

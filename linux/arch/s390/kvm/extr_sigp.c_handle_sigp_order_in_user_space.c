
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int instruction_sigp_unknown; int instruction_sigp_cpu_reset; int instruction_sigp_init_cpu_reset; int instruction_sigp_restart; int instruction_sigp_start; int instruction_sigp_prefix; int instruction_sigp_store_adtl_status; int instruction_sigp_store_status; int instruction_sigp_stop_store_status; int instruction_sigp_stop; } ;
struct kvm_vcpu {TYPE_2__ stat; TYPE_1__* kvm; } ;
struct TYPE_6__ {int user_sigp; } ;
struct TYPE_4__ {TYPE_3__ arch; } ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int,int ) ;

__attribute__((used)) static int handle_sigp_order_in_user_space(struct kvm_vcpu *vcpu, u8 order_code,
        u16 cpu_addr)
{
 if (!vcpu->kvm->arch.user_sigp)
  return 0;

 switch (order_code) {
 case 135:
 case 138:
 case 139:
 case 141:
 case 134:
  return 0;

 case 131:
  vcpu->stat.instruction_sigp_stop++;
  break;
 case 130:
  vcpu->stat.instruction_sigp_stop_store_status++;
  break;
 case 128:
  vcpu->stat.instruction_sigp_store_status++;
  break;
 case 129:
  vcpu->stat.instruction_sigp_store_adtl_status++;
  break;
 case 133:
  vcpu->stat.instruction_sigp_prefix++;
  break;
 case 132:
  vcpu->stat.instruction_sigp_start++;
  break;
 case 136:
  vcpu->stat.instruction_sigp_restart++;
  break;
 case 137:
  vcpu->stat.instruction_sigp_init_cpu_reset++;
  break;
 case 140:
  vcpu->stat.instruction_sigp_cpu_reset++;
  break;
 default:
  vcpu->stat.instruction_sigp_unknown++;
 }
 VCPU_EVENT(vcpu, 3, "SIGP: order %u for CPU %d handled in userspace",
     order_code, cpu_addr);

 return 1;
}

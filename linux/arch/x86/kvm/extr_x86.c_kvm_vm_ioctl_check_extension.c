
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_2__ {int (* has_emulated_msr ) (int ) ;int (* get_nested_state ) (int *,int *,int ) ;int * nested_enable_evmcs; int * enable_direct_tlbflush; int (* cpu_has_accelerated_tpr ) () ;} ;
 int KVM_CLOCK_TSC_STABLE ;
 int KVM_MAX_MCE_BANKS ;
 int KVM_MAX_VCPUS ;
 int KVM_MAX_VCPU_ID ;
 int KVM_SOFT_MAX_VCPUS ;
 int KVM_SYNC_X86_VALID_FIELDS ;
 int KVM_X2APIC_API_VALID_FLAGS ;
 int KVM_X86_DISABLE_EXITS_CSTATE ;
 int KVM_X86_DISABLE_EXITS_HLT ;
 int KVM_X86_DISABLE_EXITS_MWAIT ;
 int KVM_X86_DISABLE_EXITS_PAUSE ;
 int MSR_IA32_SMBASE ;
 int X86_FEATURE_XSAVE ;
 int boot_cpu_has (int ) ;
 int kvm_can_mwait_in_guest () ;
 int kvm_has_tsc_control ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (int ) ;
 int stub2 () ;
 int stub3 (int *,int *,int ) ;

int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
{
 int r = 0;

 switch (ext) {
 case 165:
 case 183:
 case 159:
 case 143:
 case 187:
 case 186:
 case 191:
 case 152:
 case 155:
 case 158:
 case 141:
 case 137:
 case 146:
 case 164:
 case 167:
 case 166:
 case 151:
 case 150:
 case 144:
 case 129:
 case 135:
 case 182:
 case 171:
 case 176:
 case 175:
 case 174:
 case 170:
 case 178:
 case 172:
 case 177:
 case 181:
 case 153:
 case 190:
 case 132:
 case 128:
 case 192:
 case 184:
 case 163:
 case 147:
 case 173:
 case 168:
 case 138:
 case 189:
 case 145:
  case 142:
 case 169:
 case 149:
 case 185:
 case 157:
 case 188:
  r = 1;
  break;
 case 140:
  r = KVM_SYNC_X86_VALID_FIELDS;
  break;
 case 193:
  r = KVM_CLOCK_TSC_STABLE;
  break;
 case 133:
  r |= KVM_X86_DISABLE_EXITS_HLT | KVM_X86_DISABLE_EXITS_PAUSE |
        KVM_X86_DISABLE_EXITS_CSTATE;
  if(kvm_can_mwait_in_guest())
   r |= KVM_X86_DISABLE_EXITS_MWAIT;
  break;
 case 131:
  r = kvm_x86_ops->has_emulated_msr(MSR_IA32_SMBASE);
  break;
 case 136:
  r = !kvm_x86_ops->cpu_has_accelerated_tpr();
  break;
 case 154:
  r = KVM_SOFT_MAX_VCPUS;
  break;
 case 162:
  r = KVM_MAX_VCPUS;
  break;
 case 161:
  r = KVM_MAX_VCPU_ID;
  break;
 case 148:
  r = 0;
  break;
 case 160:
  r = KVM_MAX_MCE_BANKS;
  break;
 case 130:
  r = boot_cpu_has(X86_FEATURE_XSAVE);
  break;
 case 139:
  r = kvm_has_tsc_control;
  break;
 case 134:
  r = KVM_X2APIC_API_VALID_FLAGS;
  break;
 case 156:
  r = kvm_x86_ops->get_nested_state ?
   kvm_x86_ops->get_nested_state(((void*)0), ((void*)0), 0) : 0;
  break;
 case 180:
  r = kvm_x86_ops->enable_direct_tlbflush != ((void*)0);
  break;
 case 179:
  r = kvm_x86_ops->nested_enable_evmcs != ((void*)0);
  break;
 default:
  break;
 }
 return r;

}

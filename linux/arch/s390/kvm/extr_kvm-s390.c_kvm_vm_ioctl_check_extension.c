
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm {int dummy; } ;
struct TYPE_2__ {int has_64bscao; int has_esca; } ;
 int KVM_MAX_VCPUS ;
 int KVM_S390_BSCA_CPU_SLOTS ;
 int KVM_S390_ESCA_CPU_SLOTS ;
 int MACHINE_HAS_ESOP ;
 int MACHINE_HAS_VX ;
 int MEM_OP_MAX_SIZE ;
 int hpage ;
 int kvm_is_ucontrol (struct kvm*) ;
 int kvm_s390_use_sca_entries () ;
 TYPE_1__ sclp ;
 int test_facility (int) ;

int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
{
 int r;

 switch (ext) {
 case 138:
 case 145:
 case 130:



 case 161:
 case 129:
 case 152:
 case 159:
 case 146:
 case 157:
 case 160:
 case 141:
 case 128:
 case 154:
 case 158:
 case 142:
 case 133:
 case 132:
 case 136:
 case 140:
 case 134:
 case 148:
 case 151:
 case 150:
  r = 1;
  break;
 case 143:
  r = 0;
  if (hpage && !kvm_is_ucontrol(kvm))
   r = 1;
  break;
 case 139:
  r = MEM_OP_MAX_SIZE;
  break;
 case 153:
 case 156:
 case 155:
  r = KVM_S390_BSCA_CPU_SLOTS;
  if (!kvm_s390_use_sca_entries())
   r = KVM_MAX_VCPUS;
  else if (sclp.has_esca && sclp.has_64bscao)
   r = KVM_S390_ESCA_CPU_SLOTS;
  break;
 case 147:
  r = MACHINE_HAS_ESOP;
  break;
 case 131:
  r = MACHINE_HAS_VX;
  break;
 case 137:
  r = test_facility(64);
  break;
 case 144:
  r = test_facility(133);
  break;
 case 149:
  r = test_facility(82);
  break;
 default:
  r = 0;
 }
 return r;
}

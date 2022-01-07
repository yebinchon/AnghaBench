
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_device_attr {int group; int attr; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int has_cmma; } ;


 int ENXIO ;
 int ap_instructions_available () ;
 TYPE_1__ sclp ;

__attribute__((used)) static int kvm_s390_vm_has_attr(struct kvm *kvm, struct kvm_device_attr *attr)
{
 int ret;

 switch (attr->group) {
 case 134:
  switch (attr->attr) {
  case 133:
  case 135:
   ret = sclp.has_cmma ? 0 : -ENXIO;
   break;
  case 132:
   ret = 0;
   break;
  default:
   ret = -ENXIO;
   break;
  }
  break;
 case 130:
  switch (attr->attr) {
  case 128:
  case 129:
   ret = 0;
   break;
  default:
   ret = -ENXIO;
   break;
  }
  break;
 case 146:
  switch (attr->attr) {
  case 145:
  case 149:
  case 144:
  case 148:
  case 147:
  case 143:
   ret = 0;
   break;
  default:
   ret = -ENXIO;
   break;
  }
  break;
 case 142:
  switch (attr->attr) {
  case 138:
  case 136:
  case 141:
  case 139:
   ret = 0;
   break;
  case 137:
  case 140:
   ret = ap_instructions_available() ? 0 : -ENXIO;
   break;
  default:
   ret = -ENXIO;
   break;
  }
  break;
 case 131:
  ret = 0;
  break;
 default:
  ret = -ENXIO;
  break;
 }

 return ret;
}

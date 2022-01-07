
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;





__attribute__((used)) static int kvm_vz_check_extension(struct kvm *kvm, long ext)
{
 int r;

 switch (ext) {
 case 128:

  r = 1;
  break;






 default:
  r = 0;
  break;
 }

 return r;
}

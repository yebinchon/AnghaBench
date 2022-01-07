
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_read_guest (struct kvm*,unsigned long,unsigned long*,int) ;

__attribute__((used)) static int deref_table(struct kvm *kvm, unsigned long gpa, unsigned long *val)
{
 return kvm_read_guest(kvm, gpa, val, sizeof(*val));
}

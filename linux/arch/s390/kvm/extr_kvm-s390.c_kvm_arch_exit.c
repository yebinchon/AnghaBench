
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_unregister (int ) ;
 int kvm_s390_dbf ;
 int kvm_s390_gib_destroy () ;

void kvm_arch_exit(void)
{
 kvm_s390_gib_destroy();
 debug_unregister(kvm_s390_dbf);
}

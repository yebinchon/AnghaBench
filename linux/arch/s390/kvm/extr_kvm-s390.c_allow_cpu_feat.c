
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_s390_available_cpu_feat ;
 int set_bit_inv (unsigned long,int ) ;

__attribute__((used)) static void allow_cpu_feat(unsigned long nr)
{
 set_bit_inv(nr, kvm_s390_available_cpu_feat);
}

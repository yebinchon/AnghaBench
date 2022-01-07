
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int efer_reserved_bits ;

void kvm_enable_efer_bits(u64 mask)
{
       efer_reserved_bits &= ~mask;
}

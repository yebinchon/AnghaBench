
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int BITS_PER_LONG ;
 int MIPS_ENTRYLO_RI ;
 int MIPS_ENTRYLO_XI ;

__attribute__((used)) static inline s64 entrylo_kvm_to_user(unsigned long v)
{
 s64 mask, ret = v;

 if (BITS_PER_LONG == 32) {




  mask = MIPS_ENTRYLO_RI | MIPS_ENTRYLO_XI;
  ret &= ~mask;
  ret |= ((s64)v & mask) << 32;
 }
 return ret;
}

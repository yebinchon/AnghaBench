
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 int BITS_PER_LONG ;
 unsigned long MIPS_ENTRYLO_RI ;
 unsigned long MIPS_ENTRYLO_XI ;

__attribute__((used)) static inline unsigned long entrylo_user_to_kvm(s64 v)
{
 unsigned long mask, ret = v;

 if (BITS_PER_LONG == 32) {




  mask = MIPS_ENTRYLO_RI | MIPS_ENTRYLO_XI;
  ret &= ~mask;
  ret |= (v >> 32) & mask;
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 unsigned long MAX_FACILITY_BIT ;

__attribute__((used)) static inline int set_kvm_facility(u64 *fac_list, unsigned long nr)
{
 unsigned char *ptr;

 if (nr >= MAX_FACILITY_BIT)
  return -EINVAL;
 ptr = (unsigned char *) fac_list + (nr >> 3);
 *ptr |= (0x80UL >> (nr & 7));
 return 0;
}

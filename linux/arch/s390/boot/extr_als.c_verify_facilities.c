
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* stfle_fac_list; } ;


 int ARRAY_SIZE (int*) ;
 TYPE_1__ S390_lowcore ;
 int __stfle (int*,int) ;
 int* als ;
 int facility_mismatch () ;

void verify_facilities(void)
{
 int i;

 __stfle(S390_lowcore.stfle_fac_list, ARRAY_SIZE(S390_lowcore.stfle_fac_list));
 for (i = 0; i < ARRAY_SIZE(als); i++) {
  if ((S390_lowcore.stfle_fac_list[i] & als[i]) != als[i])
   facility_mismatch();
 }
}

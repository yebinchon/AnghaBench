
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alt_stfle_fac_list; int stfle_fac_list; } ;


 int CONFIG_KERNEL_NOBP ;
 int IS_ENABLED (int ) ;
 TYPE_1__ S390_lowcore ;
 int __clear_facility (int,int ) ;
 int memcpy (int ,int ,int) ;

void setup_facility_list(void)
{
 memcpy(S390_lowcore.alt_stfle_fac_list,
        S390_lowcore.stfle_fac_list,
        sizeof(S390_lowcore.alt_stfle_fac_list));
 if (!IS_ENABLED(CONFIG_KERNEL_NOBP))
  __clear_facility(82, S390_lowcore.alt_stfle_fac_list);
}

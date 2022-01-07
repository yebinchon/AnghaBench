
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stfle_fac_list; } ;


 TYPE_1__ S390_lowcore ;
 int __clear_facility (unsigned long,int ) ;
 int __set_facility (unsigned long,int ) ;

__attribute__((used)) static void modify_facility(unsigned long nr, bool clear)
{
 if (clear)
  __clear_facility(nr, S390_lowcore.stfle_fac_list);
 else
  __set_facility(nr, S390_lowcore.stfle_fac_list);
}

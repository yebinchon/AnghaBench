
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* stfle_fac_list; } ;


 int ARRAY_SIZE (unsigned long*) ;
 unsigned long FACILITIES_ALS ;
 TYPE_1__ S390_lowcore ;
 int print_missing_facilities () ;
 int sclp_early_printk (char*) ;

__attribute__((used)) static void check_cleared_facilities(void)
{
 unsigned long als[] = { FACILITIES_ALS };
 int i;

 for (i = 0; i < ARRAY_SIZE(als); i++) {
  if ((S390_lowcore.stfle_fac_list[i] & als[i]) != als[i]) {
   sclp_early_printk("Warning: The Linux kernel requires facilities cleared via command line option\n");
   print_missing_facilities();
   break;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; scalar_t__ model; } ;


 int CONFIG_X86_64 ;
 int CONFIG_X86_PAE ;
 scalar_t__ INTEL_FAM6_XEON_PHI_KNL ;
 scalar_t__ IS_ENABLED (int ) ;
 TYPE_1__ cpu ;
 int is_intel () ;
 int puts (char*) ;

int check_knl_erratum(void)
{



 if (!is_intel() ||
     cpu.family != 6 ||
     cpu.model != INTEL_FAM6_XEON_PHI_KNL)
  return 0;
 if (IS_ENABLED(CONFIG_X86_64) || IS_ENABLED(CONFIG_X86_PAE))
  return 0;

 puts("This 32-bit kernel can not run on this Xeon Phi x200\n"
      "processor due to a processor erratum.  Use a 64-bit\n"
      "kernel, or enable PAE in this 32-bit kernel.\n\n");

 return -1;
}

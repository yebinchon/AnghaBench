
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; int misc_features; } ;


 int HV_FEATURE_FREQUENCY_MSRS_AVAILABLE ;
 int HV_X64_ACCESS_FREQUENCY_MSRS ;
 int HV_X64_ACCESS_REENLIGHTENMENT ;
 TYPE_1__ ms_hyperv ;

__attribute__((used)) static inline bool hv_reenlightenment_available(void)
{




 return ms_hyperv.features & HV_X64_ACCESS_FREQUENCY_MSRS &&
  ms_hyperv.misc_features & HV_FEATURE_FREQUENCY_MSRS_AVAILABLE &&
  ms_hyperv.features & HV_X64_ACCESS_REENLIGHTENMENT;
}

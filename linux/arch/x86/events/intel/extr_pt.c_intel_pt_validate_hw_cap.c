
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef enum pt_capabilities { ____Placeholder_pt_capabilities } pt_capabilities ;
struct TYPE_2__ {int caps; } ;


 int intel_pt_validate_cap (int ,int) ;
 TYPE_1__ pt_pmu ;

u32 intel_pt_validate_hw_cap(enum pt_capabilities cap)
{
 return intel_pt_validate_cap(pt_pmu.caps, cap);
}

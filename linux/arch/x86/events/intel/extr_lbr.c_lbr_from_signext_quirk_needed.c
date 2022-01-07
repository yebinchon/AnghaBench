
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lbr_format; } ;
struct TYPE_4__ {TYPE_1__ intel_cap; } ;


 int LBR_TSX ;
 int X86_FEATURE_HLE ;
 int X86_FEATURE_RTM ;
 scalar_t__ boot_cpu_has (int ) ;
 int* lbr_desc ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static inline bool lbr_from_signext_quirk_needed(void)
{
 int lbr_format = x86_pmu.intel_cap.lbr_format;
 bool tsx_support = boot_cpu_has(X86_FEATURE_HLE) ||
      boot_cpu_has(X86_FEATURE_RTM);

 return !tsx_support && (lbr_desc[lbr_format] & LBR_TSX);
}

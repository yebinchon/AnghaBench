
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ lmce_disabled; } ;


 int FEATURE_CONTROL_LMCE ;
 int FEATURE_CONTROL_LOCKED ;
 int MCG_LMCE_P ;
 int MCG_SER_P ;
 int MSR_IA32_FEATURE_CONTROL ;
 int MSR_IA32_MCG_CAP ;
 TYPE_1__ mca_cfg ;
 int rdmsrl (int ,int) ;

__attribute__((used)) static bool lmce_supported(void)
{
 u64 tmp;

 if (mca_cfg.lmce_disabled)
  return 0;

 rdmsrl(MSR_IA32_MCG_CAP, tmp);





 if ((tmp & (MCG_SER_P | MCG_LMCE_P)) !=
     (MCG_SER_P | MCG_LMCE_P))
  return 0;






 rdmsrl(MSR_IA32_FEATURE_CONTROL, tmp);
 if ((tmp & (FEATURE_CONTROL_LOCKED | FEATURE_CONTROL_LMCE)) ==
     (FEATURE_CONTROL_LOCKED | FEATURE_CONTROL_LMCE))
  return 1;

 return 0;
}

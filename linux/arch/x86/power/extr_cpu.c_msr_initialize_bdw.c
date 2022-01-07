
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dmi_system_id {int ident; } ;


 int ARRAY_SIZE (int *) ;
 int MSR_IA32_THERM_CONTROL ;
 int msr_build_context (int *,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int msr_initialize_bdw(const struct dmi_system_id *d)
{

 u32 bdw_msr_id[] = { MSR_IA32_THERM_CONTROL };

 pr_info("x86/pm: %s detected, MSR saving is needed during suspending.\n", d->ident);
 return msr_build_context(bdw_msr_id, ARRAY_SIZE(bdw_msr_id));
}

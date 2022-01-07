
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int CONFIG_X86_32 ;
 scalar_t__ IS_ENABLED (int ) ;
 int MSR_AMD64_PATCH_LEVEL ;
 scalar_t__ __pa_nodebug (size_t**) ;
 size_t* final_levels ;
 int native_rdmsr (int ,size_t,size_t) ;

__attribute__((used)) static bool amd_check_current_patch_level(void)
{
 u32 lvl, dummy, i;
 u32 *levels;

 native_rdmsr(MSR_AMD64_PATCH_LEVEL, lvl, dummy);

 if (IS_ENABLED(CONFIG_X86_32))
  levels = (u32 *)__pa_nodebug(&final_levels);
 else
  levels = final_levels;

 for (i = 0; levels[i]; i++) {
  if (lvl == levels[i])
   return 1;
 }
 return 0;
}

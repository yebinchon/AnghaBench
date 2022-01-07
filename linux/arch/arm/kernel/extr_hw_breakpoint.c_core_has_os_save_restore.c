
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_DBG_READ (int ,int ,int,int) ;


 int ARM_OSLSR_OSLM0 ;
 int c1 ;
 int get_debug_arch () ;

__attribute__((used)) static bool core_has_os_save_restore(void)
{
 u32 oslsr;

 switch (get_debug_arch()) {
 case 129:
  return 1;
 case 128:
  ARM_DBG_READ(c1, c1, 4, oslsr);
  if (oslsr & ARM_OSLSR_OSLM0)
   return 1;

 default:
  return 0;
 }
}

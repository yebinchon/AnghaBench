
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BIT (int) ;
 int EINVAL ;
 int SYSC_IDLE_FORCE ;
 int SYSC_IDLE_SMART ;
 int SYSC_IDLE_SMART_WKUP ;

__attribute__((used)) static int sysc_best_idle_mode(u32 idlemodes, u32 *best_mode)
{
 if (idlemodes & BIT(SYSC_IDLE_SMART_WKUP))
  *best_mode = SYSC_IDLE_SMART_WKUP;
 else if (idlemodes & BIT(SYSC_IDLE_SMART))
  *best_mode = SYSC_IDLE_SMART;
 else if (idlemodes & BIT(SYSC_IDLE_FORCE))
  *best_mode = SYSC_IDLE_FORCE;
 else
  return -EINVAL;

 return 0;
}

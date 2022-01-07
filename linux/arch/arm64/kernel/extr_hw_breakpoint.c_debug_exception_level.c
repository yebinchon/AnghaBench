
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dbg_active_el { ____Placeholder_dbg_active_el } dbg_active_el ;




 int DBG_ACTIVE_EL0 ;
 int DBG_ACTIVE_EL1 ;
 int EINVAL ;
 int pr_warning (char*,int) ;

__attribute__((used)) static enum dbg_active_el debug_exception_level(int privilege)
{
 switch (privilege) {
 case 129:
  return DBG_ACTIVE_EL0;
 case 128:
  return DBG_ACTIVE_EL1;
 default:
  pr_warning("invalid breakpoint privilege level %d\n", privilege);
  return -EINVAL;
 }
}

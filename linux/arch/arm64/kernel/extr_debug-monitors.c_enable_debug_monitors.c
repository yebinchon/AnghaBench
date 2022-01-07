
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dbg_active_el { ____Placeholder_dbg_active_el } dbg_active_el ;


 int DBG_ACTIVE_EL1 ;
 int DBG_MDSCR_KDE ;
 int DBG_MDSCR_MDE ;
 int WARN_ON (int ) ;
 scalar_t__ debug_enabled ;
 int kde_ref_count ;
 int mde_ref_count ;
 int mdscr_read () ;
 int mdscr_write (int ) ;
 int preemptible () ;
 int this_cpu_inc_return (int ) ;

void enable_debug_monitors(enum dbg_active_el el)
{
 u32 mdscr, enable = 0;

 WARN_ON(preemptible());

 if (this_cpu_inc_return(mde_ref_count) == 1)
  enable = DBG_MDSCR_MDE;

 if (el == DBG_ACTIVE_EL1 &&
     this_cpu_inc_return(kde_ref_count) == 1)
  enable |= DBG_MDSCR_KDE;

 if (enable && debug_enabled) {
  mdscr = mdscr_read();
  mdscr |= enable;
  mdscr_write(mdscr);
 }
}

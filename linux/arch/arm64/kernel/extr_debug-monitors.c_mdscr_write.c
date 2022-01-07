
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int local_daif_restore (unsigned long) ;
 unsigned long local_daif_save () ;
 int mdscr_el1 ;
 int write_sysreg (int ,int ) ;

__attribute__((used)) static void mdscr_write(u32 mdscr)
{
 unsigned long flags;
 flags = local_daif_save();
 write_sysreg(mdscr, mdscr_el1);
 local_daif_restore(flags);
}

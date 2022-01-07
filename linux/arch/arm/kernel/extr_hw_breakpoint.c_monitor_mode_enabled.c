
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARM_DBG_READ (int ,int ,int ,int) ;
 int ARM_DSCR_MDBGEN ;
 int c0 ;
 int c1 ;

__attribute__((used)) static int monitor_mode_enabled(void)
{
 u32 dscr;
 ARM_DBG_READ(c0, c1, 0, dscr);
 return !!(dscr & ARM_DSCR_MDBGEN);
}

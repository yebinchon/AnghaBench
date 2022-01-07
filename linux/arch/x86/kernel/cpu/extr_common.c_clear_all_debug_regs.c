
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_debugreg (int ,int) ;

__attribute__((used)) static void clear_all_debug_regs(void)
{
 int i;

 for (i = 0; i < 8; i++) {

  if ((i == 4) || (i == 5))
   continue;

  set_debugreg(0, i);
 }
}

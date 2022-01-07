
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btext_drawchar (char) ;
 void udbg_adb_old_putc (char) ;
 scalar_t__ udbg_adb_use_btext ;

__attribute__((used)) static void udbg_adb_putc(char c)
{




 if (udbg_adb_old_putc)
  return udbg_adb_old_putc(c);
}

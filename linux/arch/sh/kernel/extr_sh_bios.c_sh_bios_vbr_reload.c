
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gdb_vbr_vector ;

void sh_bios_vbr_reload(void)
{
 if (gdb_vbr_vector)
  __asm__ __volatile__ (
   "ldc %0, vbr"
   :
   : "r" (((unsigned long) gdb_vbr_vector) - 0x100)
   : "memory"
  );
}

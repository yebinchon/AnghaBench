
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_error_jmp ;
 int catch_spr_faults ;
 int printf (char*,...) ;
 scalar_t__ setjmp (int ) ;
 int sync () ;
 scalar_t__ xmon_is_ro ;
 int xmon_mtspr (int,unsigned long) ;
 char* xmon_ro_msg ;

__attribute__((used)) static void
write_spr(int n, unsigned long val)
{
 if (xmon_is_ro) {
  printf(xmon_ro_msg);
  return;
 }

 if (setjmp(bus_error_jmp) == 0) {
  catch_spr_faults = 1;
  sync();

  xmon_mtspr(n, val);

  sync();
 } else {
  printf("SPR 0x%03x (%4d) Faulted during write\n", n, n);
 }
 catch_spr_faults = 0;
}

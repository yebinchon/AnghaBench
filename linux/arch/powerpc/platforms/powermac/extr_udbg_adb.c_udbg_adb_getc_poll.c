
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_adb_old_getc_poll () ;
 int udbg_adb_poll () ;

__attribute__((used)) static int udbg_adb_getc_poll(void)
{
 udbg_adb_poll();

 if (udbg_adb_old_getc_poll)
  return udbg_adb_old_getc_poll();
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_getc () ;

__attribute__((used)) static int xmon_readchar(void)
{
 if (udbg_getc)
  return udbg_getc();
 return -1;
}

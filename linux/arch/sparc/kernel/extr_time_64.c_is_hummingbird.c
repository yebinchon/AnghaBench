
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_hummingbird(void)
{
 unsigned long ver, manuf, impl;

 __asm__ __volatile__ ("rdpr %%ver, %0"
         : "=&r" (ver));
 manuf = ((ver >> 48) & 0xffff);
 impl = ((ver >> 32) & 0xffff);

 return (manuf == 0x17 && impl == 0x13);
}

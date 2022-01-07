
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int x86_family(unsigned int sig)
{
 unsigned int x86;

 x86 = (sig >> 8) & 0xf;

 if (x86 == 0xf)
  x86 += (sig >> 20) & 0xff;

 return x86;
}

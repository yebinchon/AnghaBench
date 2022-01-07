
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long mfpvr () ;

__attribute__((used)) static unsigned long chip_11_errata(unsigned long memsize)
{
 unsigned long pvr;

 pvr = mfpvr();

 switch (pvr & 0xf0000ff0) {
  case 0x40000850:
  case 0x400008d0:
  case 0x200008d0:
   memsize -= 4096;
   break;
  default:
   break;
 }

 return memsize;
}

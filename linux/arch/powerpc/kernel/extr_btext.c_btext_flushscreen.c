
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ calc_base (int ,int ) ;
 int dispDeviceDepth ;
 int* dispDeviceRect ;
 int dispDeviceRowBytes ;

void btext_flushscreen(void)
{
 unsigned int *base = (unsigned int *)calc_base(0, 0);
 unsigned long width = ((dispDeviceRect[2] - dispDeviceRect[0]) *
     (dispDeviceDepth >> 3)) >> 2;
 int i,j;

 for (i=0; i < (dispDeviceRect[3] - dispDeviceRect[1]); i++)
 {
  unsigned int *ptr = base;
  for(j = width; j > 0; j -= 8) {
   __asm__ __volatile__ ("dcbst 0,%0" :: "r" (ptr));
   ptr += 8;
  }
  base += (dispDeviceRowBytes >> 2);
 }
 __asm__ __volatile__ ("sync" ::: "memory");
}

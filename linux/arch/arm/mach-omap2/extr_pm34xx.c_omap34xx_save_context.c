
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;



__attribute__((used)) static void omap34xx_save_context(u32 *save)
{
 u32 val;


 asm("mrc p15, 0, %0, c1, c0, 1" : "=r" (val));
 *save++ = 1;
 *save++ = val;


 asm("mrc p15, 1, %0, c9, c0, 2" : "=r" (val));
 *save++ = 1;
 *save++ = val;
}

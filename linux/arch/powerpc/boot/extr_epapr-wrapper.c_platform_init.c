
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int epapr_platform_init (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

void platform_init(unsigned long r3, unsigned long r4, unsigned long r5,
     unsigned long r6, unsigned long r7)
{
 epapr_platform_init(r3, r4, r5, r6, r7);
}

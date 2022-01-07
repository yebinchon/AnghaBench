
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long teehbr_read(void)
{
 unsigned long v;
 asm("mrc	p14, 6, %0, c1, c0, 0\n" : "=r" (v));
 return v;
}

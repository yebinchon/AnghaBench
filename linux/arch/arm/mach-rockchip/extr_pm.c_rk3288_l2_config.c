
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 rk3288_l2_config(void)
{
 u32 l2ctlr;

 asm("mrc p15, 1, %0, c9, c0, 2" : "=r" (l2ctlr));
 return l2ctlr;
}

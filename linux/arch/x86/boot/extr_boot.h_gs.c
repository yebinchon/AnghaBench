
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 gs(void)
{
 u16 seg;
 asm volatile("movw %%gs,%0" : "=rm" (seg));
 return seg;
}

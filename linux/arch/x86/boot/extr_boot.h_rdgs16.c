
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int addr_t ;



__attribute__((used)) static inline u16 rdgs16(addr_t addr)
{
 u16 v;
 asm volatile("movw %%gs:%1,%0" : "=r" (v) : "m" (*(u16 *)addr));
 return v;
}

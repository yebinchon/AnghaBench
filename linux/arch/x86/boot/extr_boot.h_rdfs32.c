
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int addr_t ;



__attribute__((used)) static inline u32 rdfs32(addr_t addr)
{
 u32 v;
 asm volatile("movl %%fs:%1,%0" : "=r" (v) : "m" (*(u32 *)addr));
 return v;
}

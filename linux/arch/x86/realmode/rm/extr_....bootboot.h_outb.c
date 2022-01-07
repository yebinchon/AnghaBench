
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline void outb(u8 v, u16 port)
{
 asm volatile("outb %0,%1" : : "a" (v), "dN" (port));
}

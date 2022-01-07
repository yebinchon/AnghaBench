
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static inline u8 inb(u16 port)
{
 u8 v;
 asm volatile("inb %1,%0" : "=a" (v) : "dN" (port));
 return v;
}

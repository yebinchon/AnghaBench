
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void wb977_ww(int reg, int val)
{
 outb(reg, 0x370);
 outb(val >> 8, 0x371);
 outb(reg + 1, 0x370);
 outb(val & 255, 0x371);
}

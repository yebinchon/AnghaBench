
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void __delay(unsigned long cycles)
{
 __asm__ volatile ("1: dec.l #1,%0\n\t"
     "bne 1b":"=r"(cycles):"0"(cycles));
}

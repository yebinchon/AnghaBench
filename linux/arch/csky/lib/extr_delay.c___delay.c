
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void __delay(unsigned long loops)
{
 asm volatile (
  "mov r0, r0\n"
  "1:declt %0\n"
  "bf	1b"
  : "=r"(loops)
  : "0"(loops));
}

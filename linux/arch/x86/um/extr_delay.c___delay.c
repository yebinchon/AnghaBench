
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void __delay(unsigned long loops)
{
 asm volatile(
  "test %0,%0\n"
  "jz 3f\n"
  "jmp 1f\n"

  ".align 16\n"
  "1: jmp 2f\n"

  ".align 16\n"
  "2: dec %0\n"
  " jnz 2b\n"
  "3: dec %0\n"

  :
  : "a" (loops)
 );
}

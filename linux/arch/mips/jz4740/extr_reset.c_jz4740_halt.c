
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void jz4740_halt(void)
{
 while (1) {
  __asm__(".set push;\n"
   ".set mips3;\n"
   "wait;\n"
   ".set pop;\n"
  );
 }
}

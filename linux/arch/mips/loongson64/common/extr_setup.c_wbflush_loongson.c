
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void wbflush_loongson(void)
{
 asm(".set\tpush\n\t"
     ".set\tnoreorder\n\t"
     ".set mips3\n\t"
     "sync\n\t"
     "nop\n\t"
     ".set\tpop\n\t"
     ".set mips0\n\t");
}

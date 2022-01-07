
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long arch_rnd (int ) ;
 int mmap32_rnd_bits ;
 int mmap64_rnd_bits ;
 scalar_t__ mmap_is_ia32 () ;

unsigned long arch_mmap_rnd(void)
{
 return arch_rnd(mmap_is_ia32() ? mmap32_rnd_bits : mmap64_rnd_bits);
}

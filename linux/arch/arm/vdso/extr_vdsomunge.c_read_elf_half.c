
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Half ;


 int swab16 (int ) ;

__attribute__((used)) static Elf32_Half read_elf_half(Elf32_Half half, bool swap)
{
 return swap ? swab16(half) : half;
}

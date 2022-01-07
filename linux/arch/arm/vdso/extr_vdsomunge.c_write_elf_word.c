
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Word ;


 int swab32 (int ) ;

__attribute__((used)) static void write_elf_word(Elf32_Word val, Elf32_Word *dst, bool swap)
{
 *dst = swap ? swab32(val) : val;
}

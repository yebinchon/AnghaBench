
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Elf32_Word ;


 int swab32 (int ) ;

__attribute__((used)) static Elf32_Word read_elf_word(Elf32_Word word, bool swap)
{
 return swap ? swab32(word) : word;
}

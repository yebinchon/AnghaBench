
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t toc_section; } ;
struct module {TYPE_1__ arch; } ;
struct TYPE_5__ {int sh_addr; } ;
typedef TYPE_2__ Elf64_Shdr ;



__attribute__((used)) static inline unsigned long my_r2(const Elf64_Shdr *sechdrs, struct module *me)
{
 return (sechdrs[me->arch.toc_section].sh_addr & ~0xfful) + 0x8000;
}

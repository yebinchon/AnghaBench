
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
typedef int Elf_Addr ;



__attribute__((used)) static int apply_r_riscv_pcrel_lo12_i_rela(struct module *me, u32 *location,
        Elf_Addr v)
{




 *location = (*location & 0xfffff) | ((v & 0xfff) << 20);
 return 0;
}

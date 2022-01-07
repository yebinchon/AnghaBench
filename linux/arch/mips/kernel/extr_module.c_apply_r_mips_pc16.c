
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int dummy; } ;
typedef int Elf_Addr ;


 int apply_r_mips_pc (struct module*,int *,int ,int ,int) ;

__attribute__((used)) static int apply_r_mips_pc16(struct module *me, u32 *location,
        u32 base, Elf_Addr v, bool rela)
{
 return apply_r_mips_pc(me, location, base, v, 16);
}

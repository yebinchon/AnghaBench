
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct module {int name; } ;
typedef int Elf_Addr ;


 int EINVAL ;
 int pr_err (char*,int ,int *) ;

__attribute__((used)) static int apply_r_riscv_align_rela(struct module *me, u32 *location,
        Elf_Addr v)
{
 pr_err(
   "%s: The unexpected relocation type 'R_RISCV_ALIGN' from PC = %p\n",
   me->name, location);
 return -EINVAL;
}

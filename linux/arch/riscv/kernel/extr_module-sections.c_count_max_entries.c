
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int r_info; } ;
typedef TYPE_1__ Elf_Rela ;


 unsigned int ELF_RISCV_R_TYPE (int ) ;
 unsigned int R_RISCV_CALL_PLT ;
 unsigned int R_RISCV_GOT_HI20 ;
 int duplicate_rela (TYPE_1__*,unsigned int) ;

__attribute__((used)) static void count_max_entries(Elf_Rela *relas, int num,
         unsigned int *plts, unsigned int *gots)
{
 unsigned int type, i;

 for (i = 0; i < num; i++) {
  type = ELF_RISCV_R_TYPE(relas[i].r_info);
  if (type == R_RISCV_CALL_PLT) {
   if (!duplicate_rela(relas, i))
    (*plts)++;
  } else if (type == R_RISCV_GOT_HI20) {
   if (!duplicate_rela(relas, i))
    (*gots)++;
  }
 }
}

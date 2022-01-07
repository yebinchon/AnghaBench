
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct mips_hi16* r_mips_hi16_list; } ;
struct module {TYPE_1__ arch; } ;
struct mips_hi16 {struct mips_hi16* next; scalar_t__ value; scalar_t__* addr; } ;
typedef scalar_t__ Elf_Addr ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mips_hi16* kmalloc (int,int ) ;

__attribute__((used)) static int apply_r_mips_hi16(struct module *me, u32 *location,
        u32 base, Elf_Addr v, bool rela)
{
 struct mips_hi16 *n;

 if (rela) {
  *location = (*location & 0xffff0000) |
       ((((long long) v + 0x8000LL) >> 16) & 0xffff);
  return 0;
 }






 n = kmalloc(sizeof *n, GFP_KERNEL);
 if (!n)
  return -ENOMEM;

 n->addr = (Elf_Addr *)location;
 n->value = v;
 n->next = me->arch.r_mips_hi16_list;
 me->arch.r_mips_hi16_list = n;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct got_entry {scalar_t__ r_addend; int got_offset; struct got_entry* next; } ;
struct TYPE_3__ {int r_info; scalar_t__ r_addend; } ;
typedef void* Elf64_Xword ;
typedef scalar_t__ Elf64_Sxword ;
typedef TYPE_1__ Elf64_Rela ;


 unsigned long ELF64_R_SYM (int) ;
 unsigned long ELF64_R_TYPE (int) ;
 int GFP_KERNEL ;
 unsigned long R_ALPHA_LITERAL ;
 struct got_entry* kmalloc (int,int ) ;

__attribute__((used)) static inline void
process_reloc_for_got(Elf64_Rela *rela,
        struct got_entry *chains, Elf64_Xword *poffset)
{
 unsigned long r_sym = ELF64_R_SYM (rela->r_info);
 unsigned long r_type = ELF64_R_TYPE (rela->r_info);
 Elf64_Sxword r_addend = rela->r_addend;
 struct got_entry *g;

 if (r_type != R_ALPHA_LITERAL)
  return;

 for (g = chains + r_sym; g ; g = g->next)
  if (g->r_addend == r_addend) {
   if (g->got_offset == 0) {
    g->got_offset = *poffset;
    *poffset += 8;
   }
   goto found_entry;
  }

 g = kmalloc (sizeof (*g), GFP_KERNEL);
 g->next = chains[r_sym].next;
 g->r_addend = r_addend;
 g->got_offset = *poffset;
 *poffset += 8;
 chains[r_sym].next = g;

 found_entry:



 rela->r_info |= g->got_offset << 8;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {scalar_t__ lab; int * addr; } ;


 scalar_t__ UASM_LABEL_INVALID ;

void uasm_move_relocs(struct uasm_reloc *rel, u32 *first, u32 *end,
          long off)
{
 for (; rel->lab != UASM_LABEL_INVALID; rel++)
  if (rel->addr >= first && rel->addr < end)
   rel->addr += off;
}

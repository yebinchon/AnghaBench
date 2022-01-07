
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uasm_reloc {int type; int * addr; } ;
struct uasm_label {scalar_t__ addr; } ;



 int build_bimm (long) ;
 int panic (char*,int) ;

__attribute__((used)) static inline void
__resolve_relocs(struct uasm_reloc *rel, struct uasm_label *lab)
{
 long laddr = (long)lab->addr;
 long raddr = (long)rel->addr;

 switch (rel->type) {
 case 128:
  *rel->addr |= build_bimm(laddr - (raddr + 4));
  break;

 default:
  panic("Unsupported Micro-assembler relocation %d",
        rel->type);
 }
}

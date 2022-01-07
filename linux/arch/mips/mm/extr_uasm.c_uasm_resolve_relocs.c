
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uasm_reloc {scalar_t__ lab; } ;
struct uasm_label {scalar_t__ lab; } ;


 scalar_t__ UASM_LABEL_INVALID ;
 int __resolve_relocs (struct uasm_reloc*,struct uasm_label*) ;

void uasm_resolve_relocs(struct uasm_reloc *rel,
      struct uasm_label *lab)
{
 struct uasm_label *l;

 for (; rel->lab != UASM_LABEL_INVALID; rel++)
  for (l = lab; l->lab != UASM_LABEL_INVALID; l++)
   if (rel->lab == l->lab)
    __resolve_relocs(rel, l);
}

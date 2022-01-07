
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;


 unsigned int _PAGE_ACCESSED ;
 unsigned int _PAGE_VALID ;
 int iPTE_SW (int **,struct uasm_reloc**,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
build_make_valid(u32 **p, struct uasm_reloc **r, unsigned int pte,
   unsigned int ptr, unsigned int scratch)
{
 unsigned int mode = _PAGE_VALID | _PAGE_ACCESSED;

 iPTE_SW(p, r, pte, ptr, mode, scratch);
}

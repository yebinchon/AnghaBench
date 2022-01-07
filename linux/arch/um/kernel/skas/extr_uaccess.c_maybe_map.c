
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pte_t ;
struct TYPE_2__ {int mm; } ;


 TYPE_1__* current ;
 int handle_page_fault (unsigned long,int ,int,int,int*) ;
 int pte_present (int ) ;
 int pte_write (int ) ;
 int * virt_to_pte (int ,unsigned long) ;

__attribute__((used)) static pte_t *maybe_map(unsigned long virt, int is_write)
{
 pte_t *pte = virt_to_pte(current->mm, virt);
 int err, dummy_code;

 if ((pte == ((void*)0)) || !pte_present(*pte) ||
     (is_write && !pte_write(*pte))) {
  err = handle_page_fault(virt, 0, is_write, 1, &dummy_code);
  if (err)
   return ((void*)0);
  pte = virt_to_pte(current->mm, virt);
 }
 if (!pte_present(*pte))
  pte = ((void*)0);

 return pte;
}

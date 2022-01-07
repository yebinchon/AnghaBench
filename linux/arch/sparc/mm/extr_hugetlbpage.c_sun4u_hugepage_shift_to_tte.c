
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;



__attribute__((used)) static pte_t sun4u_hugepage_shift_to_tte(pte_t entry, unsigned int shift)
{
 return entry;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 scalar_t__ pte_ci (int ) ;
 scalar_t__ pte_present (int ) ;
 int pte_special (int ) ;
 scalar_t__ pte_user (int ) ;

__attribute__((used)) static inline int pte_looks_normal(pte_t pte)
{

 if (pte_present(pte) && !pte_special(pte)) {
  if (pte_ci(pte))
   return 0;
  if (pte_user(pte))
   return 1;
 }
 return 0;
}

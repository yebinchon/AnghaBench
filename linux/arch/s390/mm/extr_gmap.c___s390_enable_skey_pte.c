
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {int mm; } ;
typedef int pte_t ;


 int ptep_zap_key (int ,unsigned long,int *) ;

__attribute__((used)) static int __s390_enable_skey_pte(pte_t *pte, unsigned long addr,
      unsigned long next, struct mm_walk *walk)
{

 ptep_zap_key(walk->mm, addr, pte);
 return 0;
}

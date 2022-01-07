
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pteval_t ;
typedef int pte_t ;


 int __pte (int ) ;
 int init_mm ;
 int pte_clear (int *,int ,int *) ;
 int pte_val (int ) ;
 int set_pte_atomic (int *,int ) ;

__attribute__((used)) static void clear_pte_presence(pte_t *pte, bool clear, pteval_t *old)
{
 pteval_t v = pte_val(*pte);
 if (clear) {
  *old = v;

  pte_clear(&init_mm, 0, pte);
 } else {

  set_pte_atomic(pte, __pte(*old));
 }
}

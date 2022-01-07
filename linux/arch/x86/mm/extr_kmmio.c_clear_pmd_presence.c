
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmdval_t ;
typedef int pmd_t ;


 int __pmd (int ) ;
 int pmd_mknotpresent (int ) ;
 int pmd_val (int ) ;
 int set_pmd (int *,int ) ;

__attribute__((used)) static void clear_pmd_presence(pmd_t *pmd, bool clear, pmdval_t *old)
{
 pmd_t new_pmd;
 pmdval_t v = pmd_val(*pmd);
 if (clear) {
  *old = v;
  new_pmd = pmd_mknotpresent(*pmd);
 } else {

  new_pmd = __pmd(*old);
 }
 set_pmd(pmd, new_pmd);
}

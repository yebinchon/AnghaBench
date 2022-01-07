
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pt_element_t ;
typedef int gfn_t ;


 int PAGE_SHIFT ;
 int PT_LVL_ADDR_MASK (int) ;

__attribute__((used)) static gfn_t gpte_to_gfn_lvl(pt_element_t gpte, int lvl)
{
 return (gpte & PT_LVL_ADDR_MASK(lvl)) >> PAGE_SHIFT;
}

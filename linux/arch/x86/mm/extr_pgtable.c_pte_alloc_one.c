
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgtable_t ;


 int __pte_alloc_one (struct mm_struct*,int ) ;
 int __userpte_alloc_gfp ;

pgtable_t pte_alloc_one(struct mm_struct *mm)
{
 return __pte_alloc_one(mm, __userpte_alloc_gfp);
}

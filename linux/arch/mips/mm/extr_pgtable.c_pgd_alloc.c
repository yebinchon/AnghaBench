
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pgd_t ;


 int GFP_KERNEL ;
 int PGD_ORDER ;
 int PTRS_PER_PGD ;
 int USER_PTRS_PER_PGD ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int init_mm ;
 int memcpy (int *,int *,int) ;
 int pgd_init (unsigned long) ;
 int * pgd_offset (int *,unsigned long) ;

pgd_t *pgd_alloc(struct mm_struct *mm)
{
 pgd_t *ret, *init;

 ret = (pgd_t *) __get_free_pages(GFP_KERNEL, PGD_ORDER);
 if (ret) {
  init = pgd_offset(&init_mm, 0UL);
  pgd_init((unsigned long)ret);
  memcpy(ret + USER_PTRS_PER_PGD, init + USER_PTRS_PER_PGD,
         (PTRS_PER_PGD - USER_PTRS_PER_PGD) * sizeof(pgd_t));
 }

 return ret;
}

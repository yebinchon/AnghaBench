
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int GFP_PGTABLE_USER ;
 int PGD_ALLOCATION_ORDER ;
 scalar_t__ __get_free_pages (int ,int ) ;

__attribute__((used)) static inline pgd_t *_pgd_alloc(void)
{
 return (pgd_t *)__get_free_pages(GFP_PGTABLE_USER,
      PGD_ALLOCATION_ORDER);
}

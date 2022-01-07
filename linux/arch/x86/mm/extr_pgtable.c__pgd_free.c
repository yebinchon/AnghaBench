
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int PGD_ALLOCATION_ORDER ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static inline void _pgd_free(pgd_t *pgd)
{
 free_pages((unsigned long)pgd, PGD_ALLOCATION_ORDER);
}

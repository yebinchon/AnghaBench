
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int PTRS_PER_PGD ;
 int _PAGE_PRESENT ;
 int __pa (int ) ;
 int __pgd (int) ;
 int empty_zero_page ;
 int set_pgd (int *,int ) ;

__attribute__((used)) static inline void resume_init_first_level_page_table(pgd_t *pg_dir)
{
}

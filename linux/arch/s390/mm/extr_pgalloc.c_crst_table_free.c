
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int free_pages (unsigned long,int) ;

void crst_table_free(struct mm_struct *mm, unsigned long *table)
{
 free_pages((unsigned long) table, 2);
}

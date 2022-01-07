
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_table_entry {int dummy; } ;


 int cmp_unwind_table_entry ;
 int sort (struct unwind_table_entry*,int,int,int ,int *) ;

__attribute__((used)) static void
unwind_table_sort(struct unwind_table_entry *start,
    struct unwind_table_entry *finish)
{
 sort(start, finish - start, sizeof(struct unwind_table_entry),
      cmp_unwind_table_entry, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_table_entry {int region_start; } ;



__attribute__((used)) static int cmp_unwind_table_entry(const void *a, const void *b)
{
 return ((const struct unwind_table_entry *)a)->region_start
      - ((const struct unwind_table_entry *)b)->region_start;
}

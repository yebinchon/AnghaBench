
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fadump_mrange_info {scalar_t__ max_mem_ranges; scalar_t__ mem_ranges_sz; int * mem_ranges; } ;


 int kfree (int *) ;

__attribute__((used)) static void fadump_free_mem_ranges(struct fadump_mrange_info *mrange_info)
{
 kfree(mrange_info->mem_ranges);
 mrange_info->mem_ranges = ((void*)0);
 mrange_info->mem_ranges_sz = 0;
 mrange_info->max_mem_ranges = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t get_allocation_granularity () ;

int git__mmap_alignment(size_t *page_size)
{
 *page_size = get_allocation_granularity();
 return 0;
}

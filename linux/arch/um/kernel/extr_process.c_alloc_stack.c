
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 unsigned long __get_free_pages (int ,int) ;

unsigned long alloc_stack(int order, int atomic)
{
 unsigned long page;
 gfp_t flags = GFP_KERNEL;

 if (atomic)
  flags = GFP_ATOMIC;
 page = __get_free_pages(flags, order);

 return page;
}

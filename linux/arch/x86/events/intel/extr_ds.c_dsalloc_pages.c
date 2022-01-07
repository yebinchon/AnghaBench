
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int __GFP_ZERO ;
 struct page* __alloc_pages_node (int,int,unsigned int) ;
 int cpu_to_node (int) ;
 unsigned int get_order (size_t) ;
 void* page_address (struct page*) ;

__attribute__((used)) static void *dsalloc_pages(size_t size, gfp_t flags, int cpu)
{
 unsigned int order = get_order(size);
 int node = cpu_to_node(cpu);
 struct page *page;

 page = __alloc_pages_node(node, flags | __GFP_ZERO, order);
 return page ? page_address(page) : ((void*)0);
}

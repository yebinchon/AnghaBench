
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int pages; } ;


 int GFP_KERNEL ;
 int kvmalloc (size_t,int ) ;

void agp_alloc_page_array(size_t size, struct agp_memory *mem)
{
 mem->pages = kvmalloc(size, GFP_KERNEL);
}

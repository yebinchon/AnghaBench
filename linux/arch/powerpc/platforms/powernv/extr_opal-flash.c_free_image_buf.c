
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int * data; int size; } ;


 int ClearPageReserved (int ) ;
 int IMAGE_INVALID ;
 int PAGE_ALIGN (int ) ;
 scalar_t__ PAGE_SIZE ;
 TYPE_1__ image_data ;
 int vfree (int *) ;
 int vmalloc_to_page (void*) ;

__attribute__((used)) static void free_image_buf(void)
{
 void *addr;
 int size;

 addr = image_data.data;
 size = PAGE_ALIGN(image_data.size);
 while (size > 0) {
  ClearPageReserved(vmalloc_to_page(addr));
  addr += PAGE_SIZE;
  size -= PAGE_SIZE;
 }
 vfree(image_data.data);
 image_data.data = ((void*)0);
 image_data.status = IMAGE_INVALID;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kimage {int dummy; } ;


 int clear_page (void*) ;
 struct page* kimage_alloc_control_pages (struct kimage*,int ) ;
 void* page_address (struct page*) ;

__attribute__((used)) static void *alloc_pgt_page(void *data)
{
 struct kimage *image = (struct kimage *)data;
 struct page *page;
 void *p = ((void*)0);

 page = kimage_alloc_control_pages(image, 0);
 if (page) {
  p = page_address(page);
  clear_page(p);
 }

 return p;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int PAGE_SIZE ;
 int array_size (int ,int) ;
 void* diag204_buf ;
 int diag204_buf_pages ;
 int diag204_buf_vmalloc ;
 void* page_align_ptr (int ) ;
 int vmalloc (int ) ;

__attribute__((used)) static void *diag204_alloc_vbuf(int pages)
{

 diag204_buf_vmalloc = vmalloc(array_size(PAGE_SIZE, (pages + 1)));
 if (!diag204_buf_vmalloc)
  return ERR_PTR(-ENOMEM);
 diag204_buf = page_align_ptr(diag204_buf_vmalloc);
 diag204_buf_pages = pages;
 return diag204_buf;
}

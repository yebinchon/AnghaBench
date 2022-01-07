
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_page {int bitmap; int page; } ;
typedef int gfp_t ;


 int alloc_pages (int ,int ) ;
 int kfree (struct nullb_page*) ;
 struct nullb_page* kmalloc (int,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static struct nullb_page *null_alloc_page(gfp_t gfp_flags)
{
 struct nullb_page *t_page;

 t_page = kmalloc(sizeof(struct nullb_page), gfp_flags);
 if (!t_page)
  goto out;

 t_page->page = alloc_pages(gfp_flags, 0);
 if (!t_page->page)
  goto out_freepage;

 memset(t_page->bitmap, 0, sizeof(t_page->bitmap));
 return t_page;
out_freepage:
 kfree(t_page);
out:
 return ((void*)0);
}

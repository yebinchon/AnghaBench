
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radix_tree_root {int dummy; } ;
struct nullb_page {TYPE_1__* page; } ;
struct nullb_device {scalar_t__ curr_cache; struct radix_tree_root data; struct radix_tree_root cache; } ;
struct TYPE_2__ {unsigned long index; } ;


 int FREE_BATCH ;
 int WARN_ON (int) ;
 int null_free_page (struct nullb_page*) ;
 struct nullb_page* radix_tree_delete_item (struct radix_tree_root*,unsigned long,struct nullb_page*) ;
 int radix_tree_gang_lookup (struct radix_tree_root*,void**,unsigned long,int) ;

__attribute__((used)) static void null_free_device_storage(struct nullb_device *dev, bool is_cache)
{
 unsigned long pos = 0;
 int nr_pages;
 struct nullb_page *ret, *t_pages[FREE_BATCH];
 struct radix_tree_root *root;

 root = is_cache ? &dev->cache : &dev->data;

 do {
  int i;

  nr_pages = radix_tree_gang_lookup(root,
    (void **)t_pages, pos, FREE_BATCH);

  for (i = 0; i < nr_pages; i++) {
   pos = t_pages[i]->page->index;
   ret = radix_tree_delete_item(root, pos, t_pages[i]);
   WARN_ON(ret != t_pages[i]);
   null_free_page(ret);
  }

  pos++;
 } while (nr_pages == FREE_BATCH);

 if (is_cache)
  dev->curr_cache = 0;
}

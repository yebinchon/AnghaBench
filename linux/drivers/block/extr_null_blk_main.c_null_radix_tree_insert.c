
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct radix_tree_root {int dummy; } ;
struct nullb_page {TYPE_1__* page; } ;
struct nullb {TYPE_2__* dev; } ;
struct TYPE_4__ {int curr_cache; struct radix_tree_root data; struct radix_tree_root cache; } ;
struct TYPE_3__ {scalar_t__ index; } ;


 scalar_t__ PAGE_SIZE ;
 int WARN_ON (int) ;
 int null_free_page (struct nullb_page*) ;
 scalar_t__ radix_tree_insert (struct radix_tree_root*,scalar_t__,struct nullb_page*) ;
 struct nullb_page* radix_tree_lookup (struct radix_tree_root*,scalar_t__) ;

__attribute__((used)) static struct nullb_page *null_radix_tree_insert(struct nullb *nullb, u64 idx,
 struct nullb_page *t_page, bool is_cache)
{
 struct radix_tree_root *root;

 root = is_cache ? &nullb->dev->cache : &nullb->dev->data;

 if (radix_tree_insert(root, idx, t_page)) {
  null_free_page(t_page);
  t_page = radix_tree_lookup(root, idx);
  WARN_ON(!t_page || t_page->page->index != idx);
 } else if (is_cache)
  nullb->dev->curr_cache += PAGE_SIZE;

 return t_page;
}

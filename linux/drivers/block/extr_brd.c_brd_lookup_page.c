
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct brd_device {int brd_pages; } ;
typedef int sector_t ;
typedef int pgoff_t ;


 int BUG_ON (int ) ;
 int PAGE_SECTORS_SHIFT ;
 struct page* radix_tree_lookup (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct page *brd_lookup_page(struct brd_device *brd, sector_t sector)
{
 pgoff_t idx;
 struct page *page;
 rcu_read_lock();
 idx = sector >> PAGE_SECTORS_SHIFT;
 page = radix_tree_lookup(&brd->brd_pages, idx);
 rcu_read_unlock();

 BUG_ON(page && page->index != idx);

 return page;
}

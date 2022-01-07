
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_alloc {int buffer_size; TYPE_1__* pages; } ;
struct TYPE_2__ {int lru; scalar_t__ page_ptr; } ;


 int PAGE_SIZE ;
 int binder_alloc_free_page ;
 int binder_alloc_lru ;
 int binder_selftest_failures ;
 scalar_t__ list_empty (int *) ;
 unsigned long list_lru_count (int *) ;
 int list_lru_walk (int *,int ,int *,unsigned long) ;
 int pr_err (char*,char*,int) ;

__attribute__((used)) static void binder_selftest_free_page(struct binder_alloc *alloc)
{
 int i;
 unsigned long count;

 while ((count = list_lru_count(&binder_alloc_lru))) {
  list_lru_walk(&binder_alloc_lru, binder_alloc_free_page,
         ((void*)0), count);
 }

 for (i = 0; i < (alloc->buffer_size / PAGE_SIZE); i++) {
  if (alloc->pages[i].page_ptr) {
   pr_err("expect free but is %s at page index %d\n",
          list_empty(&alloc->pages[i].lru) ?
          "alloc" : "lru", i);
   binder_selftest_failures++;
  }
 }
}

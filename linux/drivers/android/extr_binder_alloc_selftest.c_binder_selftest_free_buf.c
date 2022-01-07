
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct binder_buffer {int dummy; } ;
struct binder_alloc {TYPE_1__* pages; } ;
struct TYPE_2__ {scalar_t__ page_ptr; int lru; } ;


 int BUFFER_NUM ;
 size_t PAGE_SIZE ;
 int binder_alloc_free_buf (struct binder_alloc*,struct binder_buffer*) ;
 int binder_selftest_failures ;
 scalar_t__ list_empty (int *) ;
 int pr_err (char*,char*,int) ;
 int pr_err_size_seq (size_t*,int*) ;

__attribute__((used)) static void binder_selftest_free_buf(struct binder_alloc *alloc,
         struct binder_buffer *buffers[],
         size_t *sizes, int *seq, size_t end)
{
 int i;

 for (i = 0; i < BUFFER_NUM; i++)
  binder_alloc_free_buf(alloc, buffers[seq[i]]);

 for (i = 0; i < end / PAGE_SIZE; i++) {





  if (list_empty(&alloc->pages[i].lru)) {
   pr_err_size_seq(sizes, seq);
   pr_err("expect lru but is %s at page index %d\n",
          alloc->pages[i].page_ptr ? "alloc" : "free", i);
   binder_selftest_failures++;
  }
 }
}

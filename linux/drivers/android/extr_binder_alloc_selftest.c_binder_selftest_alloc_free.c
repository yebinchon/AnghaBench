
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int dummy; } ;
struct binder_alloc {int dummy; } ;


 int BUFFER_NUM ;
 int binder_alloc_lru ;
 int binder_selftest_alloc_buf (struct binder_alloc*,struct binder_buffer**,size_t*,int*) ;
 int binder_selftest_free_buf (struct binder_alloc*,struct binder_buffer**,size_t*,int*,size_t) ;
 int binder_selftest_free_page (struct binder_alloc*) ;
 scalar_t__ list_lru_count (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static void binder_selftest_alloc_free(struct binder_alloc *alloc,
           size_t *sizes, int *seq, size_t end)
{
 struct binder_buffer *buffers[BUFFER_NUM];

 binder_selftest_alloc_buf(alloc, buffers, sizes, seq);
 binder_selftest_free_buf(alloc, buffers, sizes, seq, end);


 binder_selftest_alloc_buf(alloc, buffers, sizes, seq);
 if (list_lru_count(&binder_alloc_lru))
  pr_err("lru list should be empty but is not\n");

 binder_selftest_free_buf(alloc, buffers, sizes, seq, end);
 binder_selftest_free_page(alloc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_buffer {int dummy; } ;
struct binder_alloc {int dummy; } ;


 int BUFFER_NUM ;
 scalar_t__ IS_ERR (struct binder_buffer*) ;
 struct binder_buffer* binder_alloc_new_buf (struct binder_alloc*,size_t,int ,int ,int ) ;
 int binder_selftest_failures ;
 int check_buffer_pages_allocated (struct binder_alloc*,struct binder_buffer*,size_t) ;
 int pr_err_size_seq (size_t*,int*) ;

__attribute__((used)) static void binder_selftest_alloc_buf(struct binder_alloc *alloc,
          struct binder_buffer *buffers[],
          size_t *sizes, int *seq)
{
 int i;

 for (i = 0; i < BUFFER_NUM; i++) {
  buffers[i] = binder_alloc_new_buf(alloc, sizes[i], 0, 0, 0);
  if (IS_ERR(buffers[i]) ||
      !check_buffer_pages_allocated(alloc, buffers[i],
        sizes[i])) {
   pr_err_size_seq(sizes, seq);
   binder_selftest_failures++;
  }
 }
}

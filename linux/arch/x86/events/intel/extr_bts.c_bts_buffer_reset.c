
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int head; unsigned long size; unsigned long wakeup; } ;
struct bts_phys {unsigned long offset; unsigned long displacement; unsigned long size; int page; } ;
struct bts_buffer {int nr_pages; size_t cur_buf; unsigned int nr_bufs; unsigned long end; int head; struct bts_phys* buf; scalar_t__ snapshot; } ;


 unsigned long BTS_RECORD_SIZE ;
 unsigned long BTS_SAFETY_MARGIN ;
 int ENOSPC ;
 int PAGE_SHIFT ;
 int bts_buffer_pad_out (struct bts_phys*,unsigned long) ;
 unsigned long buf_size (int ) ;
 int local_set (int *,unsigned long) ;
 int perf_aux_output_skip (struct perf_output_handle*,unsigned long) ;

__attribute__((used)) static int
bts_buffer_reset(struct bts_buffer *buf, struct perf_output_handle *handle)
{
 unsigned long head, space, next_space, pad, gap, skip, wakeup;
 unsigned int next_buf;
 struct bts_phys *phys, *next_phys;
 int ret;

 if (buf->snapshot)
  return 0;

 head = handle->head & ((buf->nr_pages << PAGE_SHIFT) - 1);

 phys = &buf->buf[buf->cur_buf];
 space = phys->offset + phys->displacement + phys->size - head;
 pad = space;
 if (space > handle->size) {
  space = handle->size;
  space -= space % BTS_RECORD_SIZE;
 }
 if (space <= BTS_SAFETY_MARGIN) {

  next_buf = buf->cur_buf + 1;
  if (next_buf >= buf->nr_bufs)
   next_buf = 0;
  next_phys = &buf->buf[next_buf];
  gap = buf_size(phys->page) - phys->displacement - phys->size +
        next_phys->displacement;
  skip = pad + gap;
  if (handle->size >= skip) {
   next_space = next_phys->size;
   if (next_space + skip > handle->size) {
    next_space = handle->size - skip;
    next_space -= next_space % BTS_RECORD_SIZE;
   }
   if (next_space > space || !space) {
    if (pad)
     bts_buffer_pad_out(phys, head);
    ret = perf_aux_output_skip(handle, skip);
    if (ret)
     return ret;

    phys = next_phys;
    space = next_space;
    head = phys->offset + phys->displacement;





    buf->cur_buf = next_buf;
    local_set(&buf->head, head);
   }
  }
 }


 wakeup = BTS_SAFETY_MARGIN + BTS_RECORD_SIZE + handle->wakeup -
   handle->head;
 if (space > wakeup) {
  space = wakeup;
  space -= space % BTS_RECORD_SIZE;
 }

 buf->end = head + space;





 if (!space)
  return -ENOSPC;

 return 0;
}

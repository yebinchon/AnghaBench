
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_buffer {scalar_t__ output_off; int nr_pages; unsigned long stop_pos; unsigned long intr_pos; TYPE_1__* intr_te; TYPE_1__* stop_te; int head; } ;
struct perf_output_handle {unsigned long size; unsigned long wakeup; } ;
struct TYPE_2__ {int stop; int intr; } ;


 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 int PERF_AUX_FLAG_TRUNCATED ;
 int PT_CAP_topa_multiple_entries ;
 int intel_pt_validate_hw_cap (int ) ;
 unsigned long local64_read (int *) ;
 int offset_in_page (unsigned long) ;
 int perf_aux_output_flag (struct perf_output_handle*,int ) ;
 scalar_t__ pt_buffer_region_size (struct pt_buffer*) ;
 void* pt_topa_entry_for_page (struct pt_buffer*,unsigned long) ;
 void* pt_topa_prev_entry (struct pt_buffer*,TYPE_1__*) ;

__attribute__((used)) static int pt_buffer_reset_markers(struct pt_buffer *buf,
       struct perf_output_handle *handle)

{
 unsigned long head = local64_read(&buf->head);
 unsigned long idx, npages, wakeup;


 if (buf->output_off + handle->size + 1 < pt_buffer_region_size(buf)) {
  perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
  return -EINVAL;
 }



 if (!intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries))
  return 0;


 if (buf->stop_te) {
  buf->stop_te->stop = 0;
  buf->stop_te->intr = 0;
 }

 if (buf->intr_te)
  buf->intr_te->intr = 0;


 npages = handle->size >> PAGE_SHIFT;


 if (!offset_in_page(head + handle->size + 1))
  npages++;

 idx = (head >> PAGE_SHIFT) + npages;
 idx &= buf->nr_pages - 1;

 if (idx != buf->stop_pos) {
  buf->stop_pos = idx;
  buf->stop_te = pt_topa_entry_for_page(buf, idx);
  buf->stop_te = pt_topa_prev_entry(buf, buf->stop_te);
 }

 wakeup = handle->wakeup >> PAGE_SHIFT;


 idx = (head >> PAGE_SHIFT) + npages - 1;
 if (idx > wakeup)
  idx = wakeup;

 idx &= buf->nr_pages - 1;
 if (idx != buf->intr_pos) {
  buf->intr_pos = idx;
  buf->intr_te = pt_topa_entry_for_page(buf, idx);
  buf->intr_te = pt_topa_prev_entry(buf, buf->intr_te);
 }

 buf->stop_te->stop = 1;
 buf->stop_te->intr = 1;
 buf->intr_te->intr = 1;

 return 0;
}

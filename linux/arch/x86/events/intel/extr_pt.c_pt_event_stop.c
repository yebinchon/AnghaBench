
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_buffer {int nr_pages; int data_size; scalar_t__ snapshot; } ;
struct TYPE_5__ {int head; struct perf_event* event; } ;
struct pt {TYPE_2__ handle; int handle_nmi; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct perf_event {TYPE_1__ hw; } ;


 int PAGE_SHIFT ;
 int PERF_EF_UPDATE ;
 scalar_t__ PERF_HES_STOPPED ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WRITE_ONCE (int ,int ) ;
 int local_xchg (int *,int) ;
 int perf_aux_output_end (TYPE_2__*,int ) ;
 struct pt_buffer* perf_get_aux (TYPE_2__*) ;
 int pt_config_stop (struct perf_event*) ;
 int pt_ctx ;
 int pt_handle_status (struct pt*) ;
 int pt_read_offset (struct pt_buffer*) ;
 int pt_update_head (struct pt*) ;
 struct pt* this_cpu_ptr (int *) ;

__attribute__((used)) static void pt_event_stop(struct perf_event *event, int mode)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);





 WRITE_ONCE(pt->handle_nmi, 0);

 pt_config_stop(event);

 if (event->hw.state == PERF_HES_STOPPED)
  return;

 event->hw.state = PERF_HES_STOPPED;

 if (mode & PERF_EF_UPDATE) {
  struct pt_buffer *buf = perf_get_aux(&pt->handle);

  if (!buf)
   return;

  if (WARN_ON_ONCE(pt->handle.event != event))
   return;

  pt_read_offset(buf);

  pt_handle_status(pt);

  pt_update_head(pt);

  if (buf->snapshot)
   pt->handle.head =
    local_xchg(&buf->data_size,
        buf->nr_pages << PAGE_SHIFT);
  perf_aux_output_end(&pt->handle, local_xchg(&buf->data_size, 0));
 }
}

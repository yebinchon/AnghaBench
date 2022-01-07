
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_buffer {int output_off; int cur_idx; int cur; int snapshot; } ;
struct TYPE_6__ {int head; } ;
struct pt {TYPE_2__ handle; int handle_nmi; } ;
struct hw_perf_event {scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct TYPE_5__ {int table; } ;


 scalar_t__ PERF_HES_STOPPED ;
 int WRITE_ONCE (int ,int) ;
 struct pt_buffer* perf_aux_output_begin (TYPE_2__*,struct perf_event*) ;
 int perf_aux_output_end (TYPE_2__*,int ) ;
 scalar_t__ pt_buffer_reset_markers (struct pt_buffer*,TYPE_2__*) ;
 int pt_buffer_reset_offsets (struct pt_buffer*,int ) ;
 int pt_config (struct perf_event*) ;
 int pt_config_buffer (int ,int ,int ) ;
 int pt_ctx ;
 struct pt* this_cpu_ptr (int *) ;
 TYPE_1__* topa_to_page (int ) ;

__attribute__((used)) static void pt_event_start(struct perf_event *event, int mode)
{
 struct hw_perf_event *hwc = &event->hw;
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 struct pt_buffer *buf;

 buf = perf_aux_output_begin(&pt->handle, event);
 if (!buf)
  goto fail_stop;

 pt_buffer_reset_offsets(buf, pt->handle.head);
 if (!buf->snapshot) {
  if (pt_buffer_reset_markers(buf, &pt->handle))
   goto fail_end_stop;
 }

 WRITE_ONCE(pt->handle_nmi, 1);
 hwc->state = 0;

 pt_config_buffer(topa_to_page(buf->cur)->table, buf->cur_idx,
    buf->output_off);
 pt_config(event);

 return;

fail_end_stop:
 perf_aux_output_end(&pt->handle, 0);
fail_stop:
 hwc->state = PERF_HES_STOPPED;
}

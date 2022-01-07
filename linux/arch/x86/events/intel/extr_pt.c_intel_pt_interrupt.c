
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt_buffer {int output_off; int cur_idx; int cur; int data_size; } ;
struct TYPE_9__ {int head; struct perf_event* event; } ;
struct pt {TYPE_3__ handle; int handle_nmi; } ;
struct TYPE_7__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct TYPE_8__ {int table; } ;


 int PERF_HES_STOPPED ;
 int READ_ONCE (int ) ;
 int local_xchg (int *,int ) ;
 struct pt_buffer* perf_aux_output_begin (TYPE_3__*,struct perf_event*) ;
 int perf_aux_output_end (TYPE_3__*,int ) ;
 struct pt_buffer* perf_get_aux (TYPE_3__*) ;
 int pt_buffer_reset_markers (struct pt_buffer*,TYPE_3__*) ;
 int pt_buffer_reset_offsets (struct pt_buffer*,int ) ;
 int pt_config (struct perf_event*) ;
 int pt_config_buffer (int ,int ,int ) ;
 int pt_config_stop (struct perf_event*) ;
 int pt_ctx ;
 int pt_handle_status (struct pt*) ;
 int pt_read_offset (struct pt_buffer*) ;
 int pt_update_head (struct pt*) ;
 struct pt* this_cpu_ptr (int *) ;
 TYPE_2__* topa_to_page (int ) ;

void intel_pt_interrupt(void)
{
 struct pt *pt = this_cpu_ptr(&pt_ctx);
 struct pt_buffer *buf;
 struct perf_event *event = pt->handle.event;






 if (!READ_ONCE(pt->handle_nmi))
  return;

 if (!event)
  return;

 pt_config_stop(event);

 buf = perf_get_aux(&pt->handle);
 if (!buf)
  return;

 pt_read_offset(buf);

 pt_handle_status(pt);

 pt_update_head(pt);

 perf_aux_output_end(&pt->handle, local_xchg(&buf->data_size, 0));

 if (!event->hw.state) {
  int ret;

  buf = perf_aux_output_begin(&pt->handle, event);
  if (!buf) {
   event->hw.state = PERF_HES_STOPPED;
   return;
  }

  pt_buffer_reset_offsets(buf, pt->handle.head);

  ret = pt_buffer_reset_markers(buf, &pt->handle);
  if (ret) {
   perf_aux_output_end(&pt->handle, 0);
   return;
  }

  pt_config_buffer(topa_to_page(buf->cur)->table, buf->cur_idx,
     buf->output_off);
  pt_config(event);
 }
}

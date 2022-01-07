
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct debug_store {scalar_t__ bts_index; scalar_t__ bts_interrupt_threshold; } ;
struct TYPE_5__ {struct perf_event* event; } ;
struct bts_ctx {TYPE_1__ handle; int state; struct debug_store* ds; } ;
struct bts_buffer {int data_size; int head; scalar_t__ snapshot; } ;
typedef scalar_t__ s64 ;


 scalar_t__ BTS_STATE_STOPPED ;
 int ENOSPC ;
 scalar_t__ READ_ONCE (int ) ;
 int WRITE_ONCE (int ,scalar_t__) ;
 int barrier () ;
 int bts_buffer_reset (struct bts_buffer*,TYPE_1__*) ;
 int bts_ctx ;
 int bts_update (struct bts_ctx*) ;
 int cpu_hw_events ;
 scalar_t__ local_read (int *) ;
 int local_xchg (int *,int ) ;
 struct bts_buffer* perf_aux_output_begin (TYPE_1__*,struct perf_event*) ;
 int perf_aux_output_end (TYPE_1__*,int ) ;
 struct bts_buffer* perf_get_aux (TYPE_1__*) ;
 struct bts_ctx* this_cpu_ptr (int *) ;

int intel_bts_interrupt(void)
{
 struct debug_store *ds = this_cpu_ptr(&cpu_hw_events)->ds;
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);
 struct perf_event *event = bts->handle.event;
 struct bts_buffer *buf;
 s64 old_head;
 int err = -ENOSPC, handled = 0;





 if (ds && (ds->bts_index >= ds->bts_interrupt_threshold))
  handled = 1;





 if (READ_ONCE(bts->state) == BTS_STATE_STOPPED)
  return handled;

 buf = perf_get_aux(&bts->handle);
 if (!buf)
  return handled;






 if (buf->snapshot)
  return 0;

 old_head = local_read(&buf->head);
 bts_update(bts);


 if (old_head == local_read(&buf->head))
  return handled;

 perf_aux_output_end(&bts->handle, local_xchg(&buf->data_size, 0));

 buf = perf_aux_output_begin(&bts->handle, event);
 if (buf)
  err = bts_buffer_reset(buf, &bts->handle);

 if (err) {
  WRITE_ONCE(bts->state, BTS_STATE_STOPPED);

  if (buf) {




   barrier();
   perf_aux_output_end(&bts->handle, 0);
  }
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int state; } ;
struct perf_event {TYPE_1__ hw; } ;
struct cpu_hw_events {TYPE_2__* ds; } ;
struct TYPE_8__ {int bts_interrupt_threshold; int bts_absolute_maximum; int bts_buffer_base; } ;
struct TYPE_9__ {int head; } ;
struct bts_ctx {TYPE_3__ ds_back; TYPE_4__ handle; int state; } ;
struct bts_buffer {int nr_pages; int data_size; scalar_t__ snapshot; } ;
struct TYPE_7__ {int bts_interrupt_threshold; int bts_absolute_maximum; int bts_buffer_base; int bts_index; } ;


 int BTS_STATE_ACTIVE ;
 int BTS_STATE_STOPPED ;
 int PAGE_SHIFT ;
 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int READ_ONCE (int ) ;
 int __bts_event_stop (struct perf_event*,int) ;
 int bts_ctx ;
 int bts_update (struct bts_ctx*) ;
 int cpu_hw_events ;
 int local_xchg (int *,int) ;
 int perf_aux_output_end (TYPE_4__*,int ) ;
 struct bts_buffer* perf_get_aux (TYPE_4__*) ;
 void* this_cpu_ptr (int *) ;

__attribute__((used)) static void bts_event_stop(struct perf_event *event, int flags)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 struct bts_ctx *bts = this_cpu_ptr(&bts_ctx);
 struct bts_buffer *buf = ((void*)0);
 int state = READ_ONCE(bts->state);

 if (state == BTS_STATE_ACTIVE)
  __bts_event_stop(event, BTS_STATE_STOPPED);

 if (state != BTS_STATE_STOPPED)
  buf = perf_get_aux(&bts->handle);

 event->hw.state |= PERF_HES_STOPPED;

 if (flags & PERF_EF_UPDATE) {
  bts_update(bts);

  if (buf) {
   if (buf->snapshot)
    bts->handle.head =
     local_xchg(&buf->data_size,
         buf->nr_pages << PAGE_SHIFT);
   perf_aux_output_end(&bts->handle,
                       local_xchg(&buf->data_size, 0));
  }

  cpuc->ds->bts_index = bts->ds_back.bts_buffer_base;
  cpuc->ds->bts_buffer_base = bts->ds_back.bts_buffer_base;
  cpuc->ds->bts_absolute_maximum = bts->ds_back.bts_absolute_maximum;
  cpuc->ds->bts_interrupt_threshold = bts->ds_back.bts_interrupt_threshold;
 }
}

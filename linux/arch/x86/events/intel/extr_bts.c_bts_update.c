
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_store {unsigned long bts_index; unsigned long bts_buffer_base; scalar_t__ bts_absolute_maximum; } ;
struct bts_ctx {int handle; } ;
struct bts_buffer {int data_size; int snapshot; int head; int cur_buf; } ;
struct TYPE_2__ {struct debug_store* ds; } ;


 int PERF_AUX_FLAG_TRUNCATED ;
 unsigned long bts_buffer_offset (struct bts_buffer*,int ) ;
 int cpu_hw_events ;
 int local_add (unsigned long,int *) ;
 int local_set (int *,unsigned long) ;
 unsigned long local_xchg (int *,unsigned long) ;
 TYPE_1__ per_cpu (int ,int) ;
 int perf_aux_output_flag (int *,int ) ;
 struct bts_buffer* perf_get_aux (int *) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static void bts_update(struct bts_ctx *bts)
{
 int cpu = raw_smp_processor_id();
 struct debug_store *ds = per_cpu(cpu_hw_events, cpu).ds;
 struct bts_buffer *buf = perf_get_aux(&bts->handle);
 unsigned long index = ds->bts_index - ds->bts_buffer_base, old, head;

 if (!buf)
  return;

 head = index + bts_buffer_offset(buf, buf->cur_buf);
 old = local_xchg(&buf->head, head);

 if (!buf->snapshot) {
  if (old == head)
   return;

  if (ds->bts_index >= ds->bts_absolute_maximum)
   perf_aux_output_flag(&bts->handle,
                        PERF_AUX_FLAG_TRUNCATED);





  local_add(head - old, &buf->data_size);
 } else {
  local_set(&buf->data_size, head);
 }
}

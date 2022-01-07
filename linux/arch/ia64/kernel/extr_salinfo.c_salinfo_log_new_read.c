
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct salinfo_data_saved {int cpu; scalar_t__ id; int size; scalar_t__ buffer; } ;
struct salinfo_data {int saved_num; int state; int cpu_event; int log_size; int log_buffer; struct salinfo_data_saved* data_saved; } ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ sal_log_record_header_t ;


 int ARRAY_SIZE (struct salinfo_data_saved*) ;
 int STATE_LOG_RECORD ;
 int STATE_NO_DATA ;
 int barrier () ;
 int cpumask_clear_cpu (int,int *) ;
 int data_saved_lock ;
 int memcpy (int ,TYPE_1__*,int ) ;
 int salinfo_log_read_cpu ;
 int shift1_data_saved (struct salinfo_data*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int work_on_cpu_safe (int,int ,struct salinfo_data*) ;

__attribute__((used)) static void
salinfo_log_new_read(int cpu, struct salinfo_data *data)
{
 struct salinfo_data_saved *data_saved;
 unsigned long flags;
 int i;
 int saved_size = ARRAY_SIZE(data->data_saved);

 data->saved_num = 0;
 spin_lock_irqsave(&data_saved_lock, flags);
retry:
 for (i = 0, data_saved = data->data_saved; i < saved_size; ++i, ++data_saved) {
  if (data_saved->buffer && data_saved->cpu == cpu) {
   sal_log_record_header_t *rh = (sal_log_record_header_t *)(data_saved->buffer);
   data->log_size = data_saved->size;
   memcpy(data->log_buffer, rh, data->log_size);
   barrier();
   if (rh->id == data_saved->id) {
    data->saved_num = i+1;
    break;
   }

   shift1_data_saved(data, i);
   goto retry;
  }
 }
 spin_unlock_irqrestore(&data_saved_lock, flags);

 if (!data->saved_num)
  work_on_cpu_safe(cpu, salinfo_log_read_cpu, data);
 if (!data->log_size) {
  data->state = STATE_NO_DATA;
  cpumask_clear_cpu(cpu, &data->cpu_event);
 } else {
  data->state = STATE_LOG_RECORD;
 }
}

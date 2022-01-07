
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ transfer_progress_calls; } ;
typedef TYPE_1__ record_callbacks_data ;


 int GIT_UNUSED (size_t) ;

__attribute__((used)) static int push_transfer_progress_cb(
 unsigned int current, unsigned int total, size_t bytes, void* payload)
{
 record_callbacks_data *data = (record_callbacks_data *) payload;
 GIT_UNUSED(current); GIT_UNUSED(total); GIT_UNUSED(bytes);
 if (data->transfer_progress_calls < 0)
  return data->transfer_progress_calls;

 data->transfer_progress_calls++;
 return 0;
}

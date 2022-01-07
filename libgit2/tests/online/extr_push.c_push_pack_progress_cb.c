
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pack_progress_calls; } ;
typedef TYPE_1__ record_callbacks_data ;


 int GIT_UNUSED (unsigned int) ;

__attribute__((used)) static int push_pack_progress_cb(
 int stage, unsigned int current, unsigned int total, void* payload)
{
 record_callbacks_data *data = (record_callbacks_data *) payload;
 GIT_UNUSED(stage); GIT_UNUSED(current); GIT_UNUSED(total);
 if (data->pack_progress_calls < 0)
  return data->pack_progress_calls;

 data->pack_progress_calls++;
 return 0;
}

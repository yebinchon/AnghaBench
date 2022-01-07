
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct counter_synapse {TYPE_3__* signal; } ;
struct counter_device {int dummy; } ;
struct counter_count {TYPE_2__* synapses; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {int id; } ;





 size_t STM32_SYNAPSE_ACTION_BOTH_EDGES ;
 size_t STM32_SYNAPSE_ACTION_NONE ;
 int stm32_count_function_get (struct counter_device*,struct counter_count*,size_t*) ;

__attribute__((used)) static int stm32_action_get(struct counter_device *counter,
       struct counter_count *count,
       struct counter_synapse *synapse,
       size_t *action)
{
 size_t function;
 int err;


 *action = STM32_SYNAPSE_ACTION_NONE;

 err = stm32_count_function_get(counter, count, &function);
 if (err)
  return 0;

 switch (function) {
 case 130:

  if (synapse->signal->id == count->synapses[0].signal->id)
   *action = STM32_SYNAPSE_ACTION_BOTH_EDGES;
  break;
 case 129:

  if (synapse->signal->id == count->synapses[1].signal->id)
   *action = STM32_SYNAPSE_ACTION_BOTH_EDGES;
  break;
 case 128:

  *action = STM32_SYNAPSE_ACTION_BOTH_EDGES;
  break;
 }

 return 0;
}

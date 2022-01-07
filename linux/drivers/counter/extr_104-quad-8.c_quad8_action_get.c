
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct quad8_iio {scalar_t__* preset_enable; } ;
struct counter_synapse {TYPE_3__* signal; } ;
struct counter_device {struct quad8_iio* priv; } ;
struct counter_count {size_t id; TYPE_2__* synapses; } ;
typedef enum counter_count_direction { ____Placeholder_counter_count_direction } counter_count_direction ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {TYPE_1__* signal; } ;
struct TYPE_4__ {size_t id; } ;


 int COUNTER_COUNT_DIRECTION_FORWARD ;




 size_t QUAD8_SYNAPSE_ACTION_BOTH_EDGES ;
 size_t QUAD8_SYNAPSE_ACTION_FALLING_EDGE ;
 size_t QUAD8_SYNAPSE_ACTION_NONE ;
 size_t QUAD8_SYNAPSE_ACTION_RISING_EDGE ;
 int quad8_direction_get (struct counter_device*,struct counter_count*,int*) ;
 int quad8_function_get (struct counter_device*,struct counter_count*,size_t*) ;

__attribute__((used)) static int quad8_action_get(struct counter_device *counter,
 struct counter_count *count, struct counter_synapse *synapse,
 size_t *action)
{
 struct quad8_iio *const priv = counter->priv;
 int err;
 size_t function = 0;
 const size_t signal_a_id = count->synapses[0].signal->id;
 enum counter_count_direction direction;


 if (synapse->signal->id >= 16) {
  if (priv->preset_enable[count->id])
   *action = QUAD8_SYNAPSE_ACTION_RISING_EDGE;
  else
   *action = QUAD8_SYNAPSE_ACTION_NONE;

  return 0;
 }

 err = quad8_function_get(counter, count, &function);
 if (err)
  return err;


 *action = QUAD8_SYNAPSE_ACTION_NONE;


 switch (function) {
 case 131:
  if (synapse->signal->id == signal_a_id)
   *action = QUAD8_SYNAPSE_ACTION_RISING_EDGE;
  break;
 case 130:
  if (synapse->signal->id == signal_a_id) {
   quad8_direction_get(counter, count, &direction);

   if (direction == COUNTER_COUNT_DIRECTION_FORWARD)
    *action = QUAD8_SYNAPSE_ACTION_RISING_EDGE;
   else
    *action = QUAD8_SYNAPSE_ACTION_FALLING_EDGE;
  }
  break;
 case 129:
  if (synapse->signal->id == signal_a_id)
   *action = QUAD8_SYNAPSE_ACTION_BOTH_EDGES;
  break;
 case 128:
  *action = QUAD8_SYNAPSE_ACTION_BOTH_EDGES;
  break;
 }

 return 0;
}

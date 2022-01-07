
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct counter_synapse {int dummy; } ;
struct counter_device {int dummy; } ;
struct counter_count {int dummy; } ;


 size_t FTM_QUADDEC_SYNAPSE_ACTION_BOTH_EDGES ;

__attribute__((used)) static int ftm_quaddec_action_get(struct counter_device *counter,
      struct counter_count *count,
      struct counter_synapse *synapse,
      size_t *action)
{
 *action = FTM_QUADDEC_SYNAPSE_ACTION_BOTH_EDGES;

 return 0;
}

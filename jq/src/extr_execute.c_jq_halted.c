
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int halted; } ;
typedef TYPE_1__ jq_state ;



int
jq_halted(jq_state *jq)
{
  return jq->halted;
}

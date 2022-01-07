
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int failures; } ;
typedef TYPE_1__ jq_util_input_state ;



int jq_util_input_errors(jq_util_input_state *state) {
  return state->failures;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jv_parser ;
struct TYPE_3__ {int slurped; int * parser; } ;
typedef TYPE_1__ jq_util_input_state ;


 int assert (int) ;
 int jv_array () ;
 int jv_invalid () ;
 int jv_is_valid (int ) ;
 int jv_string (char*) ;

void jq_util_input_set_parser(jq_util_input_state *state, jv_parser *parser, int slurp) {
  assert(!jv_is_valid(state->slurped));
  state->parser = parser;

  if (parser == ((void*)0) && slurp)
    state->slurped = jv_string("");
  else if (slurp)
    state->slurped = jv_array();
  else
    state->slurped = jv_invalid();
}

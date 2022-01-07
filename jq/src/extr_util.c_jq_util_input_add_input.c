
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nfiles; int * files; } ;
typedef TYPE_1__ jq_util_input_state ;


 int * jv_mem_realloc (int *,int) ;
 int jv_mem_strdup (char const*) ;

void jq_util_input_add_input(jq_util_input_state *state, const char *fname) {
  state->files = jv_mem_realloc(state->files, (state->nfiles + 1) * sizeof(state->files[0]));
  state->files[state->nfiles++] = jv_mem_strdup(fname);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jq_util_input_get_current_line (int *) ;
 int jv_free (int ) ;

__attribute__((used)) static jv f_current_line(jq_state *jq, jv a) {
  jv_free(a);
  return jq_util_input_get_current_line(jq);
}

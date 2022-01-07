
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_NUMBER ;
 int jq_halt (int *,int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_true () ;
 int type_error (int ,char*) ;

__attribute__((used)) static jv f_halt_error(jq_state *jq, jv input, jv a) {
  if (jv_get_kind(a) != JV_KIND_NUMBER) {
    jv_free(a);
    return type_error(input, "halt_error/1: number required");
  }
  jq_halt(jq, a, input);
  return jv_true();
}

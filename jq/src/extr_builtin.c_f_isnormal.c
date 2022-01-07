
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ jv_kind ;
typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_NUMBER ;
 scalar_t__ isnormal (double) ;
 int jv_false () ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 double jv_number_value (int ) ;
 int jv_true () ;

__attribute__((used)) static jv f_isnormal(jq_state *jq, jv input) {
  jv_kind k = jv_get_kind(input);
  if (k != JV_KIND_NUMBER) {
    jv_free(input);
    return jv_false();
  }
  double n = jv_number_value(input);
  jv_free(input);
  return isnormal(n) ? jv_true() : jv_false();
}

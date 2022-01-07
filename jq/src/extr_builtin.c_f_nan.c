
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int NAN ;
 int jv_free (int ) ;
 int jv_number (int ) ;

__attribute__((used)) static jv f_nan(jq_state *jq, jv input) {
  jv_free(input);
  return jv_number(NAN);
}

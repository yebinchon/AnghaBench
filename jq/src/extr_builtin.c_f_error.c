
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jv_invalid_with_msg (int ) ;

__attribute__((used)) static jv f_error(jq_state *jq, jv input) {
  return jv_invalid_with_msg(input);
}

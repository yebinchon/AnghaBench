
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int jv_free (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_string (char*) ;

__attribute__((used)) static jv f_localtime(jq_state *jq, jv a) {
  jv_free(a);
  return jv_invalid_with_msg(jv_string("localtime not implemented on this platform"));
}

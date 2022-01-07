
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_STRING ;
 int jv_copy (int ) ;
 int jv_false () ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_string (char*) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_value (int ) ;
 int jv_true () ;
 scalar_t__ memcmp (int ,int ,int) ;
 int ret_error2 (int ,int ,int ) ;

__attribute__((used)) static jv f_startswith(jq_state *jq, jv a, jv b) {
  if (jv_get_kind(a) != JV_KIND_STRING || jv_get_kind(b) != JV_KIND_STRING)
    return ret_error2(a, b, jv_string("startswith() requires string inputs"));
  int alen = jv_string_length_bytes(jv_copy(a));
  int blen = jv_string_length_bytes(jv_copy(b));
  jv ret;

  if (blen <= alen && memcmp(jv_string_value(a), jv_string_value(b), blen) == 0)
    ret = jv_true();
  else
    ret = jv_false();
  jv_free(a);
  jv_free(b);
  return ret;
}

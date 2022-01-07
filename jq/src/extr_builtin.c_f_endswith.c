
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
 size_t jv_string_length_bytes (int ) ;
 char* jv_string_value (int ) ;
 int jv_true () ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 int ret_error2 (int ,int ,int ) ;

__attribute__((used)) static jv f_endswith(jq_state *jq, jv a, jv b) {
  if (jv_get_kind(a) != JV_KIND_STRING || jv_get_kind(b) != JV_KIND_STRING)
    return ret_error2(a, b, jv_string("endswith() requires string inputs"));
  const char *astr = jv_string_value(a);
  const char *bstr = jv_string_value(b);
  size_t alen = jv_string_length_bytes(jv_copy(a));
  size_t blen = jv_string_length_bytes(jv_copy(b));
  jv ret;;

  if (alen < blen ||
     memcmp(astr + (alen - blen), bstr, blen) != 0)
    ret = jv_false();
  else
    ret = jv_true();
  jv_free(a);
  jv_free(b);
  return ret;
}

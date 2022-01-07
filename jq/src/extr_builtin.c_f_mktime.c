
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_ARRAY ;
 int jv2tm (int ,struct tm*) ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_number (scalar_t__) ;
 int jv_string (char*) ;
 scalar_t__ my_mktime (struct tm*) ;
 int ret_error (int ,int ) ;

__attribute__((used)) static jv f_mktime(jq_state *jq, jv a) {
  if (jv_get_kind(a) != JV_KIND_ARRAY)
    return ret_error(a, jv_string("mktime requires array inputs"));
  if (jv_array_length(jv_copy(a)) < 6)
    return ret_error(a, jv_string("mktime requires parsed datetime inputs"));
  struct tm tm;
  if (!jv2tm(a, &tm))
    return jv_invalid_with_msg(jv_string("mktime requires parsed datetime inputs"));
  time_t t = my_mktime(&tm);
  if (t == (time_t)-1)
    return jv_invalid_with_msg(jv_string("invalid gmtime representation"));
  if (t == (time_t)-2)
    return jv_invalid_with_msg(jv_string("mktime not supported on this platform"));
  return jv_number(t);
}

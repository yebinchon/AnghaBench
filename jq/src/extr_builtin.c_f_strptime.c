
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct tm {int tm_wday; int tm_yday; scalar_t__ tm_mday; int tm_mon; } ;
typedef int jv ;
typedef int jq_state ;


 scalar_t__ JV_KIND_STRING ;
 int isspace (char const) ;
 int jv_array_append (int ,int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_string (char const*) ;
 int jv_string_fmt (char*,char const*,char const*) ;
 char* jv_string_value (int ) ;
 int memset (struct tm*,int ,int) ;
 int ret_error2 (int ,int ,int ) ;
 int set_tm_wday (struct tm*) ;
 int set_tm_yday (struct tm*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strptime (char const*,char const*,struct tm*) ;
 int tm2jv (struct tm*) ;

__attribute__((used)) static jv f_strptime(jq_state *jq, jv a, jv b) {
  if (jv_get_kind(a) != JV_KIND_STRING || jv_get_kind(b) != JV_KIND_STRING) {
    return ret_error2(a, b, jv_string("strptime/1 requires string inputs and arguments"));
  }

  struct tm tm;
  memset(&tm, 0, sizeof(tm));
  tm.tm_wday = 8;
  tm.tm_yday = 367;
  const char *input = jv_string_value(a);
  const char *fmt = jv_string_value(b);


  if (strcmp(fmt, "%Y-%m-%dT%H:%M:%SZ")) {
    return ret_error2(a, b, jv_string("strptime/1 only supports ISO 8601 on this platform"));
  }

  const char *end = strptime(input, fmt, &tm);
  if (end == ((void*)0) || (*end != '\0' && !isspace(*end))) {
    return ret_error2(a, b, jv_string_fmt("date \"%s\" does not match format \"%s\"", input, fmt));
  }
  jv_free(b);
  if (tm.tm_wday == 8 && tm.tm_mday != 0 && tm.tm_mon >= 0 && tm.tm_mon <= 11)
    set_tm_wday(&tm);
  if (tm.tm_yday == 367 && tm.tm_mday != 0 && tm.tm_mon >= 0 && tm.tm_mon <= 11)
    set_tm_yday(&tm);

  jv r = tm2jv(&tm);
  if (*end != '\0')
    r = jv_array_append(r, jv_string(end));
  jv_free(a);
  return r;
}

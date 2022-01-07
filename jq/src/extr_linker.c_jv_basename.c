
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int jv_free (int ) ;
 int jv_string_fmt (char*,char const*) ;
 char* jv_string_value (int ) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static jv jv_basename(jv name) {
  const char *s = jv_string_value(name);
  const char *p = strrchr(s, '/');
  if (!p)
    return name;
  jv res = jv_string_fmt("%s", p);
  jv_free(name);
  return res;
}

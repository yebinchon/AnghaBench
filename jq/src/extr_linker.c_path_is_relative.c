
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int PathIsRelativeA (char const*) ;
 int jv_free (int ) ;
 char* jv_string_value (int ) ;

__attribute__((used)) static int path_is_relative(jv p) {
  const char *s = jv_string_value(p);




  int res = *s != '/';

  jv_free(p);
  return res;
}

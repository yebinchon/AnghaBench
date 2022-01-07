
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int jq_state ;


 int INT_MAX ;
 char** environ ;
 int jv_free (int ) ;
 int jv_null () ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (char const*) ;
 int jv_string_sized (char const*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static jv f_env(jq_state *jq, jv input) {
  jv_free(input);
  jv env = jv_object();
  const char *var, *val;
  for (char **e = environ; *e != ((void*)0); e++) {
    var = e[0];
    val = strchr(e[0], '=');
    if (val == ((void*)0))
      env = jv_object_set(env, jv_string(var), jv_null());
    else if (var - val < INT_MAX)
      env = jv_object_set(env, jv_string_sized(var, val - var), jv_string(val + 1));
  }
  return env;
}

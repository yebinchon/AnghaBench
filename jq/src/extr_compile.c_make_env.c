
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 char const** environ ;
 int jv_copy (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_object () ;
 int jv_object_delete (int ,int ) ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (char const*) ;
 int jv_string_sized (char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static jv
make_env(jv env)
{
  if (jv_is_valid(env))
    return jv_copy(env);
  jv r = jv_object();
  if (environ == ((void*)0))
    return r;
  for (size_t i = 0; environ[i] != ((void*)0); i++) {
    const char *eq;

    if ((eq = strchr(environ[i], '=')) == ((void*)0))
      r = jv_object_delete(r, jv_string(environ[i]));
    else
      r = jv_object_set(r, jv_string_sized(environ[i], eq - environ[i]), jv_string(eq + 1));
  }
  return jv_copy(r);
}

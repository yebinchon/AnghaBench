
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cl_getenv (char const*) ;
 int git__free (char*) ;

bool cl_is_env_set(const char *name)
{
 char *env = cl_getenv(name);
 bool result = (env != ((void*)0));
 git__free(env);
 return result;
}

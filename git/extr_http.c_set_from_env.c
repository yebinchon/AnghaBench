
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;

__attribute__((used)) static void set_from_env(const char **var, const char *envname)
{
 const char *val = getenv(envname);
 if (val)
  *var = val;
}

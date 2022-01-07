
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void var_override(const char **var, char *value)
{
 if (value) {
  free((void *)*var);
  *var = xstrdup(value);
 }
}

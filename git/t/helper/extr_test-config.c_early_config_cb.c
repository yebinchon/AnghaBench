
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int early_config_cb(const char *var, const char *value, void *vdata)
{
 const char *key = vdata;

 if (!strcmp(key, var))
  printf("%s\n", value);

 return 0;
}

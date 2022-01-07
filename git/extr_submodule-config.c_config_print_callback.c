
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int config_print_callback(const char *var, const char *value, void *cb_data)
{
 char *wanted_key = cb_data;

 if (!strcmp(wanted_key, var))
  printf("%s\n", value);

 return 0;
}

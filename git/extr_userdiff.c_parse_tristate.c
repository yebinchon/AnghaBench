
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_bool (char const*,char const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_tristate(int *b, const char *k, const char *v)
{
 if (v && !strcasecmp(v, "auto"))
  *b = -1;
 else
  *b = git_config_bool(k, v);
 return 0;
}

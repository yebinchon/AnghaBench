
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_bool (char const*,char const*) ;

__attribute__((used)) static int parse_bool(int *b, const char *k, const char *v)
{
 *b = git_config_bool(k, v);
 return 0;
}

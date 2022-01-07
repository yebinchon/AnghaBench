
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int number_callback(const struct option *opt, const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);
 *(int *)opt->value = strtol(arg, ((void*)0), 10);
 return 0;
}

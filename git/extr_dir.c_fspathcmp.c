
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ignore_case ;
 int strcasecmp (char const*,char const*) ;
 int strcmp (char const*,char const*) ;

int fspathcmp(const char *a, const char *b)
{
 return ignore_case ? strcasecmp(a, b) : strcmp(a, b);
}

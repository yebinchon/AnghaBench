
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ignore_case ;
 int strncasecmp (char const*,char const*,size_t) ;
 int strncmp (char const*,char const*,size_t) ;

int fspathncmp(const char *a, const char *b, size_t count)
{
 return ignore_case ? strncasecmp(a, b, count) : strncmp(a, b, count);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 unsigned long strtoul (char const*,char**,int ) ;

__attribute__((used)) static unsigned long ulong_arg(const char *option, const char *arg)
{
 char *endptr;
 unsigned long rv = strtoul(arg, &endptr, 0);
 if (strchr(arg, '-') || endptr == arg || *endptr)
  die("%s: argument must be a non-negative integer", option);
 return rv;
}

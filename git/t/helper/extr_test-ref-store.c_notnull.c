
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,char const*) ;

__attribute__((used)) static const char *notnull(const char *arg, const char *name)
{
 if (!arg)
  die("%s required", name);
 return arg;
}

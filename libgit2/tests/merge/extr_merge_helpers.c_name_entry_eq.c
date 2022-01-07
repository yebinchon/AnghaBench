
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int name_entry_eq(const char *expected, const char *actual)
{
 if (strlen(expected) == 0)
  return (actual == ((void*)0)) ? 1 : 0;

 return (strcmp(expected, actual) == 0) ? 1 : 0;
}

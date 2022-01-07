
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int no_wildcard (char const*) ;
 scalar_t__ starts_with (char const*,char*) ;

__attribute__((used)) static int looks_like_pathspec(const char *arg)
{

 if (!no_wildcard(arg))
  return 1;


 if (starts_with(arg, ":("))
  return 1;

 return 0;
}

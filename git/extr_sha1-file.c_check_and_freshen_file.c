
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char const*,int ) ;
 int freshen_file (char const*) ;

int check_and_freshen_file(const char *fn, int freshen)
{
 if (access(fn, F_OK))
  return 0;
 if (freshen && !freshen_file(fn))
  return 0;
 return 1;
}

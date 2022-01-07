
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strpbrk (char const*,char*) ;

__attribute__((used)) static int
is_date_abbreviated (const char *fdate)
{
  if (strpbrk (fdate, "cDF"))
    return 1;

  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xdl_recmatch (char const*,long,char const*,long,long) ;

int xdiff_compare_lines(const char *l1, long s1,
   const char *l2, long s2, long flags)
{
 return xdl_recmatch(l1, s1, l2, s2, flags);
}

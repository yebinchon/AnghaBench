
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_strtol (char*,int *,int ) ;

__attribute__((used)) static int get_range(char **str, int *pint, int n)
{
 int x, inc_counter, upper_range;

 (*str)++;
 upper_range = simple_strtol((*str), ((void*)0), 0);
 inc_counter = upper_range - *pint;
 for (x = *pint; n && x < upper_range; x++, n--)
  *pint++ = x;
 return inc_counter;
}

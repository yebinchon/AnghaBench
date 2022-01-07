
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ignore_case ;
 int toupper (char) ;

__attribute__((used)) static int cmp_icase(char a, char b)
{
 if (a == b)
  return 0;
 if (ignore_case)
  return toupper(a) - toupper(b);
 return a - b;
}

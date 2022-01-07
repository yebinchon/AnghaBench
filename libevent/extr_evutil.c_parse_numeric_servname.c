
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
parse_numeric_servname(const char *servname)
{
 int n;
 char *endptr=((void*)0);
 n = (int) strtol(servname, &endptr, 10);
 if (n>=0 && n <= 65535 && servname[0] && endptr && !endptr[0])
  return n;
 else
  return -1;
}

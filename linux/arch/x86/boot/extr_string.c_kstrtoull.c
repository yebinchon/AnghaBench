
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _kstrtoull (char const*,unsigned int,unsigned long long*) ;

int kstrtoull(const char *s, unsigned int base, unsigned long long *res)
{
 if (s[0] == '+')
  s++;
 return _kstrtoull(s, base, res);
}

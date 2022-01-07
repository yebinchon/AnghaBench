
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *find_start_of_record(const char *buf, const char *p)
{
 while (p > buf && (p[-1] != '\n' || p[0] == '^'))
  p--;
 return p;
}

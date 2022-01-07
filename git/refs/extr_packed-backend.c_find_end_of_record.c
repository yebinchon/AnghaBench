
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *find_end_of_record(const char *p, const char *end)
{
 while (++p < end && (p[-1] != '\n' || p[0] == '^'))
  ;
 return p;
}

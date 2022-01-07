
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool cpu_signatures_match(unsigned int s1, unsigned int p1,
     unsigned int s2, unsigned int p2)
{
 if (s1 != s2)
  return 0;


 if (!p1 && !p2)
  return 1;


 return p1 & p2;
}

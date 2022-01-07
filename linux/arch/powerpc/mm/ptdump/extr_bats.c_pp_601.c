
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *pp_601(int k, int pp)
{
 if (pp == 0)
  return k ? "NA" : "RWX";
 if (pp == 1)
  return k ? "ROX" : "RWX";
 if (pp == 2)
  return k ? "RWX" : "RWX";
 return k ? "ROX" : "ROX";
}

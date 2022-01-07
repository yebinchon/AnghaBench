
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*,char const*,char const*) ;

__attribute__((used)) static inline int validate_dt_prop_sizes(const char *prop1, int prop1_len,
      const char *prop2, int prop2_len)
{
 if (prop1_len == prop2_len)
  return 0;

 pr_warn("cpuidle-powernv: array sizes don't match for %s and %s\n",
  prop1, prop2);
 return -1;
}

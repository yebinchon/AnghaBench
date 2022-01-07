
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_uv_undefined_panic ;
 scalar_t__ likely (int) ;
 int panic (char*,char*) ;
 int pr_crit (char*,char*) ;

unsigned long uv_undefined(char *str)
{
 if (likely(!disable_uv_undefined_panic))
  panic("UV: error: undefined MMR: %s\n", str);
 else
  pr_crit("UV: error: undefined MMR: %s\n", str);


 return ~0ul;
}

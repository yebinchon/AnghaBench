
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CSSELR_MAX ;
 int cache_levels ;

__attribute__((used)) static bool is_valid_cache(u32 val)
{
 u32 level, ctype;

 if (val >= CSSELR_MAX)
  return 0;


 level = (val >> 1);
 ctype = (cache_levels >> (level * 3)) & 7;

 switch (ctype) {
 case 0:
  return 0;
 case 1:
  return (val & 1);
 case 2:
 case 4:
  return !(val & 1);
 case 3:
  return 1;
 default:
  return 0;
 }
}

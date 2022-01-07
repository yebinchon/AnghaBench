
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (char**) ;
 int fls64 (int) ;
 long min (long,long) ;
 scalar_t__ unlikely (char const**) ;
 char** xfeature_names ;
 int xfeatures_mask ;

int cpu_has_xfeatures(u64 xfeatures_needed, const char **feature_name)
{
 u64 xfeatures_missing = xfeatures_needed & ~xfeatures_mask;

 if (unlikely(feature_name)) {
  long xfeature_idx, max_idx;
  u64 xfeatures_print;







  if (xfeatures_missing)
   xfeatures_print = xfeatures_missing;
  else
   xfeatures_print = xfeatures_needed;

  xfeature_idx = fls64(xfeatures_print)-1;
  max_idx = ARRAY_SIZE(xfeature_names)-1;
  xfeature_idx = min(xfeature_idx, max_idx);

  *feature_name = xfeature_names[xfeature_idx];
 }

 if (xfeatures_missing)
  return 0;

 return 1;
}

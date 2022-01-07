
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int name_compare (char const*,int,char const*,int) ;

int cache_name_stage_compare(const char *name1, int len1, int stage1, const char *name2, int len2, int stage2)
{
 int cmp;

 cmp = name_compare(name1, len1, name2, len2);
 if (cmp)
  return cmp;

 if (stage1 < stage2)
  return -1;
 if (stage1 > stage2)
  return 1;
 return 0;
}
